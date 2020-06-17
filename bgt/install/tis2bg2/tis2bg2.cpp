#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <cstdint>

#ifdef _WIN32

#include <conio.h>
#include <dir.h>
#include <windows.h>

#pragma hdrstop

#else

#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>

#define setmem(a, b, c) memset(a, c, b)
#define MAXPATH 256
#define HANDLE int
#define INVALID_HANDLE_VALUE (-1)
#define BYTE unsigned char

struct RGBQUAD
{
    BYTE rgbBlue;
    BYTE rgbGreen;
    BYTE rgbRed;
    BYTE rgbAlpha;
};

#endif

#ifdef __BIG_ENDIAN__

#define SwapShort(x) ( (((x) & 0xff00) >> 8) | (((x) & 0x00ff) << 8) )
#define SwapInt(x) ( (((x) & 0xff000000) >> 24) | (((x) & 0x00ff0000) >>  8) \
                    | (((x) & 0x0000ff00) <<  8) | (((x) & 0x000000ff) << 24) )

#else

#define SwapShort(x) x
#define SwapInt(x) x

#endif

#pragma pack(push, 1)

struct TTIS_Header // Unbiffed TIS doesn't have one
{
    char Sign[4]; // 'TIS '
    char Ver[4]; // 'V1  '
    std::int32_t TilesNum;
    std::int32_t TilesSectionLength;
    std::int32_t TilesOffset;
    std::int32_t TileSize;
};

struct TTIS_Tile
{
    RGBQUAD Palette[256];
    BYTE Bits[4096];
};

struct TWED_Header
{
    char Sign[4];
    char Ver[4];
    std::int32_t OverlaysNum;
    std::int32_t DoorsNum;
    std::int32_t OverlaysOffset;
    std::int32_t ScndHdrOffset;
    std::int32_t DoorsOffset;
    std::int32_t DoorTileCellIdxOffset;
};

struct TWED_Overlay
{
    std::int16_t Width;
    std::int16_t Height;
    char Tileset[8];
    std::int32_t unknown1;
    std::int32_t TilemapOffset;
    std::int32_t TileIdxLookupOffset;
};

struct TWED_Tilemap
{
    std::int16_t StartIndex;
    std::int16_t TilesCnt;
    std::int16_t AltIdx;
    BYTE Overlay;
    BYTE unknown[3];
};

struct TWED_Door
{
    char Name[8];
    std::int16_t unknown1;
    std::int16_t FirstTileCellIdx;
    std::int16_t TilesCnt;
    std::int16_t PolygonsOpenCnt;
    std::int16_t PolygonsClosedCnt;
    std::int32_t PolygonsOpenOffset;
    std::int32_t PolygonsClosedOffset;
};

#pragma pack(pop)

// Compile time struct size verification
static_assert(sizeof(TTIS_Header) == 24, "Incorrect compile-time TIS header struct size");
static_assert(sizeof(RGBQUAD) == 4, "Incorrect compile-time RGB quad struct size");
static_assert(sizeof(TTIS_Tile) == 5120, "Incorrect compile-time TIS tile struct size");
static_assert(sizeof(TWED_Header) == 32, "Incorrect compile-time WED header struct size");
static_assert(sizeof(TWED_Overlay) == 24, "Incorrect compile-time WED overlay struct size");
static_assert(sizeof(TWED_Tilemap) == 10, "Incorrect compile-time WED tilemap struct size");
static_assert(sizeof(TWED_Door) == 26, "Incorrect compile-time WED door struct size");


bool silent_mode=false;
bool generate_header=false;
bool delete_source=false;
bool save_log=false;
FILE *logf=0;

bool src_exists=false, dest_exists=false;

char exe_path[MAXPATH], src_path[MAXPATH], dest_path[MAXPATH];
char src_area_name[9], dest_area_name[9]; //area names - exact WED, TIS, MOS names
char src_area_code[7], dest_area_code[7]; //area codes - for auxillary BMPs


HANDLE hOpenWEDFile=INVALID_HANDLE_VALUE, hOpenTISFile=INVALID_HANDLE_VALUE;
#ifdef _WIN32
HANDLE hWEDMap=INVALID_HANDLE_VALUE, hTISMap=INVALID_HANDLE_VALUE;
#endif
BYTE *mappedWEDBuffer=0, *mappedTISBuffer=0;

long total_basic_tiles=0, total_add_tiles=0, total_doors_tiles=0;
bool tis_header=false;

HANDLE hSaveWEDFile=INVALID_HANDLE_VALUE, hSaveTISFile=INVALID_HANDLE_VALUE;
#ifdef _WIN32
HANDLE hSaveWEDMap=INVALID_HANDLE_VALUE, hSaveTISMap=INVALID_HANDLE_VALUE;
#endif
BYTE *mappedSaveWEDBuffer=0, *mappedSaveTISBuffer=0;

char WEDName[MAXPATH], TISName[MAXPATH];
char WEDSaveName[MAXPATH], TISSaveName[MAXPATH];


//***************************************************************************************
//***************************************************************************************
void CleanUpOpening()
{
#ifdef _WIN32
  if( hWEDMap ){
    if( mappedWEDBuffer ){ ::UnmapViewOfFile(mappedWEDBuffer); mappedWEDBuffer=0; }
    ::CloseHandle(hWEDMap); hWEDMap=INVALID_HANDLE_VALUE;
  }
  ::CloseHandle(hOpenWEDFile); hOpenWEDFile=INVALID_HANDLE_VALUE;
  if( hTISMap ){
    if( mappedTISBuffer ){ ::UnmapViewOfFile(mappedTISBuffer); mappedTISBuffer=0; }
    ::CloseHandle(hTISMap); hTISMap=INVALID_HANDLE_VALUE;
  }
  ::CloseHandle(hOpenTISFile); hOpenTISFile=INVALID_HANDLE_VALUE;
#else
  close(hOpenWEDFile); hOpenWEDFile=INVALID_HANDLE_VALUE;
  close(hOpenTISFile); hOpenTISFile=INVALID_HANDLE_VALUE;
#endif
}


void CleanUpSaving()
{
#ifdef _WIN32
  if( hSaveWEDMap ){
    if( mappedSaveWEDBuffer ){ ::UnmapViewOfFile(mappedSaveWEDBuffer); mappedSaveWEDBuffer=0; }
    ::CloseHandle(hSaveWEDMap); hSaveWEDMap=INVALID_HANDLE_VALUE;
  }
  ::CloseHandle(hSaveWEDFile); hSaveWEDFile=INVALID_HANDLE_VALUE;
  if( hSaveTISMap ){
    if( mappedSaveTISBuffer ){ ::UnmapViewOfFile(mappedSaveTISBuffer); mappedSaveTISBuffer=0; }
    ::CloseHandle(hSaveTISMap); hSaveTISMap=INVALID_HANDLE_VALUE;
  }
  ::CloseHandle(hSaveTISFile); hSaveTISFile=INVALID_HANDLE_VALUE;
#else
  close(hSaveWEDFile); hSaveWEDFile=INVALID_HANDLE_VALUE;
  close(hSaveTISFile); hSaveTISFile=INVALID_HANDLE_VALUE;
#endif
}


//this function is NOT optimized for speed :)
bool deGreenTile(BYTE *buf_in, BYTE *buf_out, int w, int h)
{
 bool solid=false;
  for(int i=0; i<h; i++){
    for(int j=0, nnn=0; j<w; j++){
      if( buf_in[i*w+j] ){ nnn=0; continue; }
      nnn++;
      if( j==0 ) buf_out[i*w+j]=buf_in[i*w+j+1];
       else buf_out[i*w+j]=buf_in[i*w+j-1];
      if( nnn>1 ) solid=true;
    }
  }
  return solid;
}

//this function is NOT optimized for speed :)
void GreenOvlTile(BYTE *buf_in, BYTE *buf_out, int w, int h)
{
  for(int i=0; i<h; i++){
    for(int j=0; j<w; j++){
      if( buf_in[i*w+j]==0 ) continue;

      if( i==0 ){
        if( j==0 ){ if( buf_in[1]==0 && buf_in[w]==0 ) buf_out[i*w+j]=0; }
        else if( j==w-1 ){ if( buf_in[w-2]==0 && buf_in[w+j]==0 ) buf_out[i*w+j]=0; }
        else{ if( buf_in[j-1]==0 && buf_in[j+1]==0 ) buf_out[i*w+j]=0; }
      }
      else if( i==h-1 ){
        if( j==0 ){ if( buf_in[i*w+1]==0 && buf_in[(i-1)*w]==0 ) buf_out[i*w+j]=0; }
        else if( j==w-1 ){ if( buf_in[i*w-2]==0 && buf_in[(i-1)*w+j]==0 ) buf_out[i*w+j]=0; }
        else{ if( buf_in[i*w+j-1]==0 && buf_in[i*w+j+1]==0 ) buf_out[i*w+j]=0; }
      }
      else{
       int n=0;
        if( buf_in[(i-1)*w+j]==0 ) n++;
        if( buf_in[(i+1)*w+j]==0 ) n++;
        if( buf_in[i*w+j-1]==0 ) n++;
        if( buf_in[i*w+j+1]==0 ) n++;
        if( n>=2 ) buf_out[i*w+j]=0;
      }
    }
  }
}

//***************************************************************************************
//***************************************************************************************


void credits()
{
  puts("\n[-----------------------------------------------]");
  puts("[---     BG1->BG2 Area Fileset Converter     ---]");
  puts("[---                                         ---]");
  puts("[---   (c)KDiamond, Feb 2005, version 1.0    ---]");
  puts("[-----------------------------------------------]\n");
  puts("Usage :\t tis2bg2 [options] input_area_name output_area_name\n\n");
  puts("Options :   -s \t silent mode");
  puts("            -h \t save TIS header (for \\override\\ use)");
  puts("            -d \t delete input area tileset after conversion");
  puts("            -l \t write log file (tis2bg2.log)");

  puts("\n\nExamples :   tis2bg2 -h AR3300 myfolder1\\AR6700");
  puts("             tis2bg2 -l myfolder1\\AR3300 myfolder2\\AR6700 -s -h -d");

  puts("\n\nThis program handles area's .wed, .tis, .mos and .bmp's.\nFor a complete area conversion .are and .bcs should be provided separately.\n\n");
}



int main(int argc, char* argv[])
{
  if( argc==1 ){
      credits();
      return 0;
  }

  setmem(src_area_name, 9, 0);
  setmem(dest_area_name, 9, 0);
  setmem(src_area_code, 7, 0);
  setmem(dest_area_code, 7, 0);
  setmem(exe_path, MAXPATH, 0);
  setmem(src_path, MAXPATH, 0);
  setmem(dest_path, MAXPATH, 0);


  //obtain .exe path
#ifdef _WIN32
 char drive[MAXDRIVE], dir[MAXDIR], file[MAXFILE];
  fnsplit(argv[0], drive, dir, 0, 0);
  strcpy(exe_path, drive);
  strcat(exe_path, dir);
  strcpy(src_path, exe_path);
  strcpy(dest_path, exe_path);
#endif
  ///////////////////////////////////////////////////////////

  //command line analisys
  for(int i=1; i<argc; i++){
    if( !strcmp(argv[i], "-s") ){ silent_mode=true; continue; }
    if( !strcmp(argv[i], "-h") ){ generate_header=true; continue; }
    if( !strcmp(argv[i], "-d") ){ delete_source=true; continue; }
    if( !strcmp(argv[i], "-l") ){ save_log=true; continue; }

    if( !src_exists ){
#ifdef _WIN32
      fnsplit(argv[i], 0, dir, file, 0);
      strcat(src_path, dir);
#else
      char *file = rindex(argv[i], '/');
      if (!file)
         file = argv[i];
      else
         strncat(src_path, argv[i], ++file - argv[i]);
#endif
      strcpy(src_area_name, file);
      memcpy(src_area_code, src_area_name, 6);
      src_exists=true;
      continue;
    }

    if( !dest_exists ){
#ifdef _WIN32
      fnsplit(argv[i], 0, dir, file, 0);
      strcat(dest_path, dir);
#else
      char *file = rindex(argv[i], '/');
      if (!file)
         file = argv[i];
      else
         strncat(dest_path, argv[i], ++file - argv[i]);
#endif
      strcpy(dest_area_name, file);
      memcpy(dest_area_code, dest_area_name, 6);
      dest_exists=true;
      continue;
    }
  }
  //////////////////////////////////////////////////////////

  if( save_log ){
    logf = fopen( strcat(exe_path,"tis2bg2.log"), "a+t" );

   time_t timer;
   struct tm *tblock;
    timer = time(NULL);
    tblock = localtime(&timer);

    fprintf(logf, "----------------------------------------\n");
    fprintf(logf, "Local time is: %s", asctime(tblock));
  }


  if( !src_exists ){
     credits();
     puts("\nError :\t Empty input area name\n\n");
     if( logf ) {
       fputs("\nError :\t Empty input area name\n\n",logf);
       fclose(logf); logf=0;
     }
     return -1;
  }
  else if( !dest_exists ){
     credits();
     puts("\nError :\t Empty output area name\n\n");
     if( logf ) {
       fputs("\nError :\t Empty output area name\n\n", logf);
       fclose(logf); logf=0;
     }
     return -1;
  }
    
  //check for files and directories existance
#ifdef _WIN32
  if( chdir(src_path)==-1 ){
#else
  if (access(src_path, R_OK|W_OK|X_OK) != 0) {  // src_path has trailing /
#endif
     credits();
     puts("\nError :\t Invalid input area directory\n\n");
     if( logf ) {
       fputs("\nError :\t Invalid input area directory\n\n",logf);
       fclose(logf); logf=0;
     }
     return -1;
  }
#ifdef _WIN32
  if( chdir(dest_path)==-1 ){
#else
  if (access(dest_path, R_OK|W_OK|X_OK) != 0) {  // dest_path has trailing /
#endif
     credits();
     puts("\nError :\t Invalid output area directory\n\n");
     if( logf ) {
       fputs("\nError :\t Invalid output area directory\n\n", logf);
       fclose(logf); logf=0;
     }
     return -1;
  }
#ifdef _WIN32
  chdir(exe_path);

 ffblk ff;
#endif
  strcpy(WEDName, src_path);
  strcat(WEDName, src_area_name);
  strcat(WEDName, ".wed");
#ifdef _WIN32
  if( findfirst(WEDName, &ff, FA_ARCH)==-1 ){
#else
  if (access(WEDName, R_OK) != 0) {
#endif
     credits();
     puts(src_path);
     puts(src_area_name);
     puts(WEDName);
     puts("\nError :\t Invalid input area name\n\n");
     if( logf ) {
        fputs("\nError :\t Invalid input area name\n\n", logf);
        fclose(logf); logf=0;
     }
     return -1;
  }
  strcpy(TISName, src_path);
  strcat(TISName, src_area_name);
  strcat(TISName, ".tis");
#ifdef _WIN32
  if( findfirst(TISName, &ff, FA_ARCH)==-1 ){
#else
  if (access(TISName, R_OK) != 0) {
#endif
     credits();
     puts("\nError :\t Cannot find input area TIS file\n\n");
     if( logf ) {
        fputs("\nError :\t Cannot find input area TIS file\n\n", logf);
        fclose(logf); logf=0;
     }
     return -1;
  }

  strcpy(WEDSaveName, dest_path);
  strcat(WEDSaveName, dest_area_name);
  strcat(WEDSaveName, ".wed");
  strcpy(TISSaveName, dest_path);
  strcat(TISSaveName, dest_area_name);
  strcat(TISSaveName, ".tis");
  //////////////////////////////////////////////////////////


//*************************************************************************************
//***  source area processing
//*************************************************************************************
#ifdef _WIN32
  hOpenWEDFile = ::CreateFile(WEDName, GENERIC_READ, FILE_SHARE_READ, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
#else
  hOpenWEDFile = open(WEDName, O_RDONLY);
#endif
  if( hOpenWEDFile==INVALID_HANDLE_VALUE ){
     puts("\nError :\t Cannot open input area WED file\n\n");
     if( logf ) {
       fputs("\nError :\t Cannot open input area WED file\n\n", logf);
       fclose(logf); logf=0;
     }
     return -1;
  }
#ifdef _WIN32
  hWEDMap = ::CreateFileMapping( hOpenWEDFile, 0, PAGE_READONLY, 0, 0, 0 );
  if( !hWEDMap ){
     CleanUpOpening();
     puts("\nError :\t Cannot map input area WED file\n\n");
     if( logf ) {
       fputs("\nError :\t Cannot map input area WED file\n\n",logf);
       fclose(logf); logf=0;
     }
     return -1;
  }
  mappedWEDBuffer = (BYTE *)::MapViewOfFile( hWEDMap, FILE_MAP_READ, 0, 0, 0 );
  if( !mappedWEDBuffer ){
#else
  off_t len = lseek(hOpenWEDFile, 0, SEEK_END);
  mappedWEDBuffer = (BYTE *)mmap(NULL, len, PROT_READ, MAP_SHARED, hOpenWEDFile, 0);
  if( mappedWEDBuffer == (void *)-1 ){
#endif
     CleanUpOpening();
     printf("%d, %d\n",errno, (errno == EBADF ?  1 : 0));
     puts("\nError :\t Cannot map input area WED file\n\n");
     if( logf ) {
       fputs("\nError :\t Cannot map input area WED file\n\n", logf);
       fclose(logf); logf=0;
     }
     return -1;
  }

#ifdef _WIN32
  hOpenTISFile = ::CreateFile(TISName, GENERIC_READ, FILE_SHARE_READ, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
#else
  hOpenTISFile = open(TISName, O_RDONLY);
#endif
  if( hOpenTISFile==INVALID_HANDLE_VALUE ){
     if( logf ) fputs("\nError :\t Cannot open input area TIS file\n\n",logf);
     CleanUpOpening();
     puts("\nError :\t Cannot open input area TIS file\n\n");
     if( logf ) { fclose(logf); logf=0; }
     return -1;
  }
#ifdef _WIN32
  hTISMap = ::CreateFileMapping( hOpenTISFile, 0, PAGE_READONLY, 0, 0, 0 );
  if( !hTISMap ){
     if( logf ) fputs("\nError :\t Cannot map input area TIS file\n\n", logf);
     CleanUpOpening();
     puts("\nError :\t Cannot map input area TIS file\n\n");
     if( logf ) { fclose(logf); logf=0; }
     return -1;
  }
  mappedTISBuffer = (BYTE *)::MapViewOfFile( hTISMap, FILE_MAP_READ, 0, 0, 0 );
  if( !mappedTISBuffer ){
#else
  len = lseek(hOpenTISFile, 0, SEEK_END);
  mappedTISBuffer = (BYTE *)mmap(NULL, len, PROT_READ, MAP_SHARED, hOpenTISFile, 0);
  if( mappedTISBuffer == (void *)-1 ){
#endif
     if( logf ) fputs("\nError :\t Cannot map input area TIS file\n\n", logf);
     CleanUpOpening();
     puts("\nError :\t Cannot map input area TIS file\n\n");
     if( logf ) { fclose(logf); logf=0; }
     return -1;
  }


 TWED_Header *header = (TWED_Header*)mappedWEDBuffer;
 char ver[5]; memcpy(ver, header->Ver, 4); ver[4]=0;
  if( !silent_mode ) printf("\n[Source]: %s, %s", WEDName, ver);
  if( logf ) fprintf(logf, "\n[Source]: %s, %s", WEDName, ver);

 TTIS_Header *headerTIS = (TTIS_Header*)mappedTISBuffer;
  if( headerTIS->Sign[0]=='T' && headerTIS->Sign[1]=='I' && headerTIS->Sign[2]=='S' ){
    memcpy(ver, headerTIS->Ver, 4); ver[4]=0;
    tis_header = true;
  }
  if( !silent_mode ){
     printf("\n          %s, %s", TISName, tis_header ? ver : "no header");
     printf("\n[Output]: %s, %s", WEDSaveName, ver);
     printf("\n          %s, %s\n", TISSaveName, generate_header ? "header" : "no header");
  }
  if( logf ){
     fprintf(logf,"\n          %s, %s", TISName, tis_header ? ver : "no header");
     fprintf(logf,"\n[Output]: %s, %s", WEDSaveName, ver);
     fprintf(logf,"\n          %s, %s\n", TISSaveName, generate_header ? "header" : "no header");
  }

 int check=0;

 TWED_Overlay *overlay = (TWED_Overlay *)(mappedWEDBuffer + SwapInt(header->OverlaysOffset)); //overlay [0]
 int tilesnum = SwapShort(overlay->Width) * SwapShort(overlay->Height), animations_tilesnum=0;
  total_basic_tiles += tilesnum;
 TWED_Tilemap *tilemap = (TWED_Tilemap *)(mappedWEDBuffer + SwapInt(overlay->TilemapOffset));
  for(int j=0; j<tilesnum; j++){
     if( SwapShort(tilemap[j].AltIdx)>0 ){
/*        if( tilemap[j].Overlay ) total_add_tiles++;
        else*/ total_doors_tiles++;
     }
     if( tilemap[j].Overlay && SwapShort(tilemap[j].AltIdx)>0 ) check++;//total_add_tiles++;

     if( SwapShort(tilemap[j].TilesCnt)>1 ){
       animations_tilesnum+=SwapShort(tilemap[j].TilesCnt);
       total_add_tiles+=SwapShort(tilemap[j].TilesCnt); //fireplaces!!!!!
     }
  }
/*
 TWED_Door *doors = (TWED_Door *)(mappedWEDBuffer + SwapInt(header->DoorsOffset));
  for(int i=0; i<SwapInt(header->DoorsNum); i++){
    TWED_Door door = doors[i];
     total_doors_tiles+=SwapShort(door.TilesCnt);
  }
*/
  if( !silent_mode ){
     printf("\n Basic tiles number: \t\t%ld", total_basic_tiles);
     printf("\n Doors extra tiles number: \t%ld", total_doors_tiles);
     printf("\n Animations extra tiles number: %d", animations_tilesnum);
//     printf("\n Overlay extra tiles number: \t%d\n", total_add_tiles);
  }
  if( logf ){
     fprintf(logf,"\n Basic tiles number: \t\t%ld", total_basic_tiles);
     fprintf(logf,"\n Doors extra tiles number: \t%ld", total_doors_tiles);
     fprintf(logf,"\n Animations extra tiles number: %d", animations_tilesnum);
     fprintf(logf,"\n Overlayed doors tiles number:  %d\n", check/*total_add_tiles*/);
  }

//*************************************************************************************
//*************************************************************************************


//*************************************************************************************
//***  files copying
//*************************************************************************************
#ifdef _WIN32
  if( !::CopyFile(WEDName, WEDSaveName, FALSE) ){
#else
  char b[2*MAXPATH + sizeof "cp -f '' ''"];
  snprintf(b, sizeof b, "cp -f '%s' '%s'", WEDName, WEDSaveName);
  if (system(b)) {
#endif
     if( logf ) fputs("\nError :\t Cannot create output area WED file\n\n", logf);
     CleanUpOpening();
     puts("\nError :\t Cannot create output area WED file\n\n");
     if( logf ) { fclose(logf); logf=0; }
     return -1;
  }

 char SrcName[MAXPATH], SName[MAXPATH], DestName[MAXPATH], DName[MAXPATH];
  strcpy(SrcName, src_path);
  strcat(SrcName, src_area_name);
  strcat(SrcName, ".mos");
  strcpy(DestName, dest_path);
  strcat(DestName, dest_area_name);
  strcat(DestName, ".mos");
#ifdef _WIN32
  if( !::CopyFile(SrcName, DestName, FALSE) ){
#else
  snprintf(b, sizeof b, "cp -f '%s' '%s' 2>/dev/null", SrcName, DestName);
  if (system(b)) {
#endif
     if( !silent_mode ) puts("\n\nWarning :\t Cannot handle area MOS file");
     if( logf ) fputs("\n\nWarning :\t Cannot handle area MOS file", logf);
  }

  strcpy(SName, src_path);
  strcat(SName, src_area_code);
  strcpy(DName, dest_path);
  strcat(DName, dest_area_code);

  strcpy(SrcName, SName);  strcat( SrcName, "ht.bmp");
  strcpy(DestName, DName); strcat(DestName, "ht.bmp");
#ifdef _WIN32
  if( !::CopyFile(SrcName, DestName, FALSE) ){
#else
  snprintf(b, sizeof b, "cp -f '%s' '%s' 2>/dev/null", SrcName, DestName);
  if (system(b)) {
#endif
     if( !silent_mode ) puts("\n\nWarning :\t Cannot handle area _HT.bmp file");
     if( logf ) fputs("\n\nWarning :\t Cannot handle area _HT.bmp file", logf);
  }
  strcpy(SrcName, SName);  strcat( SrcName, "lm.bmp");
  strcpy(DestName, DName); strcat(DestName, "lm.bmp");
#ifdef _WIN32
  if( !::CopyFile(SrcName, DestName, FALSE) ){
#else
  snprintf(b, sizeof b, "cp -f '%s' '%s' 2>/dev/null", SrcName, DestName);
  if (system(b)) {
#endif
     if( !silent_mode ) puts("\n\nWarning :\t Cannot handle area _LM.bmp file");
     if( logf ) fputs("\n\nWarning :\t Cannot handle area _LM.bmp file", logf);
  }
  strcpy(SrcName, SName);  strcat( SrcName, "ln.bmp");
  strcpy(DestName, DName); strcat(DestName, "ln.bmp");
#ifdef _WIN32
  ::CopyFile(SrcName, DestName, FALSE);
#else
  snprintf(b, sizeof b, "cp -f '%s' '%s' 2>/dev/null", SrcName, DestName);
  system(b);
#endif
  strcpy(SrcName, SName);  strcat( SrcName, "sr.bmp");
  strcpy(DestName, DName); strcat(DestName, "sr.bmp");
#ifdef _WIN32
  if( !::CopyFile(SrcName, DestName, FALSE) ){
#else
  snprintf(b, sizeof b, "cp -f '%s' '%s' 2>/dev/null", SrcName, DestName);
  if (system(b)) {
#endif
     if( !silent_mode ) puts("\n\nWarning :\t Cannot handle area _SR.bmp file");
     if( logf ) fputs("\n\nWarning :\t Cannot handle area _SR.bmp file", logf);
  }
//*************************************************************************************
//*************************************************************************************


#ifdef _WIN32
  hSaveWEDFile = ::CreateFile(WEDSaveName, GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE, 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
#else
  hSaveWEDFile = open(WEDSaveName, O_RDWR);
#endif
  if( hSaveWEDFile==INVALID_HANDLE_VALUE){
     if( logf ) fputs("\nError :\t Cannot open output area WED file\n\n", logf);
     CleanUpOpening();
     puts("\nError :\t Cannot open output area WED file\n\n");
     if( logf ) { fclose(logf); logf=0; }
     return -1;
  }
#ifdef _WIN32
  hSaveWEDMap = ::CreateFileMapping( hSaveWEDFile, 0, PAGE_READWRITE, 0, 0, 0 );
  if( !hSaveWEDMap ){
     if( logf ) fputs("\nError :\t Cannot map output area WED file\n\n", logf);
     CleanUpOpening();
     CleanUpSaving();
     puts("\nError :\t Cannot map output area WED file\n\n");
     if( logf ) { fclose(logf); logf=0; }
     return -1;
  }
  mappedSaveWEDBuffer = (BYTE *)::MapViewOfFile( hSaveWEDMap, FILE_MAP_WRITE, 0, 0, 0 );
  if( !mappedSaveWEDBuffer ){
#else
  len = lseek(hSaveWEDFile, 0, SEEK_END);
  mappedSaveWEDBuffer = (BYTE *)mmap(NULL, len, PROT_READ|PROT_WRITE, MAP_SHARED, hSaveWEDFile, 0);
  if( mappedSaveWEDBuffer == (void *)-1){
#endif
     if( logf ) fputs("\nError :\t Cannot map output area WED file\n\n", logf);
     CleanUpOpening();
     CleanUpSaving();
     puts("\nError :\t Cannot map output area WED file\n\n");
     printf("%d %d\n",errno,errno == EBADF);
     if( logf ) { fclose(logf); logf=0; }
     return -1;
  }


 TWED_Tilemap *tilemapWED = (TWED_Tilemap *)(mappedWEDBuffer + SwapInt(overlay->TilemapOffset));
 TTIS_Tile *tiles = (TTIS_Tile *)(mappedTISBuffer + tis_header*SwapInt(headerTIS->TilesOffset));

 TWED_Overlay *overlay_save = (TWED_Overlay *)(mappedSaveWEDBuffer + SwapInt(header->OverlaysOffset));
 TWED_Tilemap *tilemapSaveWED = (TWED_Tilemap *)(mappedSaveWEDBuffer + SwapInt(overlay->TilemapOffset));

  setmem(overlay_save->Tileset, 8, 0);
  strncpy(overlay_save->Tileset, dest_area_name, 8); //new WED tileset reference

#ifdef _WIN32
 DWORD tis_size, high; tis_size = ::GetFileSize(hOpenTISFile, &high);
#else
 off_t tis_size = lseek(hOpenTISFile, 0, SEEK_END);
#endif

 long real_tiles = tis_size/sizeof(TTIS_Tile);
  if( real_tiles>total_basic_tiles + total_doors_tiles + total_add_tiles )
          real_tiles=total_basic_tiles + total_doors_tiles + total_add_tiles;

 BYTE *TISBuffer = new BYTE[tis_size + sizeof(TTIS_Header)];
 TTIS_Header *tis_H = (TTIS_Header *)TISBuffer;
  memcpy(tis_H->Sign, "TIS\0", 4);
  memcpy(tis_H->Ver, "V1\0\0", 4);
  tis_H->TilesOffset = SwapInt(sizeof(TTIS_Header));
  tis_H->TileSize = SwapInt(64);
  tis_H->TilesSectionLength = SwapInt(sizeof(TTIS_Tile));
  memcpy(TISBuffer+sizeof (TTIS_Header), tiles, real_tiles*sizeof(TTIS_Tile));

 TTIS_Tile *tilesSave = (TTIS_Tile *)(TISBuffer+sizeof(TTIS_Header));  //buffer in memory


  if( !silent_mode ) puts("");

 int ext_cnt=0;
 TTIS_Tile **extra_tiles = new TTIS_Tile * [total_basic_tiles]; //maximum possible size
  setmem(extra_tiles, sizeof(TTIS_Tile *)*total_basic_tiles, 0);

 int start_idx = real_tiles;//total_basic_tiles + total_doors_tiles + total_add_tiles;

  for(int ov=1; ov<5; ov++){
   TWED_Overlay *ovl = &overlay_save[ov];
    if( SwapShort(ovl->Width)<=0 || SwapShort(ovl->Height)<=0 ) continue; //empty overlay

   int ovl_idx = 1<<ov;  //overlay's flags
      for(int i=0; i<total_basic_tiles; i++){
         if( !silent_mode ){
            printf("\rTiles processed: %4d of %ld", i+1, total_basic_tiles);
         }

        TWED_Tilemap *tileWED = &tilemapWED[i];
        TTIS_Tile *tileTIS = &tiles[i];
        TWED_Tilemap *tileWEDSave = &tilemapSaveWED[i];
        TTIS_Tile *tileTISSave = &tilesSave[i];

         if( tileWED->Overlay!=ovl_idx ) continue;

//         if( tileWED->Overlay==0 || SwapShort(tileWED->AltIdx)>=0 ) continue;

         if( tileTIS->Palette[0].rgbGreen!=255 || tileTIS->Palette[0].rgbBlue!=0 || tileTIS->Palette[0].rgbRed!=0 ){
           //wrong transparent color, tile should be skipped
           tileWEDSave->Overlay=0;
           continue;
         }


        bool solid = deGreenTile(tileTIS->Bits, tileTISSave->Bits, 64, 64);
         if( solid ){
           tileTISSave->Palette[0].rgbRed = 41;
           tileTISSave->Palette[0].rgbGreen = 66;
           tileTISSave->Palette[0].rgbBlue = 97;
         }

         if( SwapShort(tileWED->AltIdx)>=0 ){
           tileWEDSave->Overlay=0;
           continue; //door + overlay!!!!!!!!!
         }


        TTIS_Tile *new_tile = new TTIS_Tile;
         *new_tile = *tileTIS;
         extra_tiles[ext_cnt++] = new_tile;

         tileWEDSave->AltIdx = SwapShort(start_idx);
         start_idx++;

         GreenOvlTile(tileTIS->Bits, new_tile->Bits, 64, 64);
      }
  }//overlays

  for(int i=total_basic_tiles; i<real_tiles; i++){  //extra tiles
     TTIS_Tile *tileTIS = &tiles[i];
     TTIS_Tile *tileTISSave = &tilesSave[i];
      if( tileTIS->Palette[0].rgbGreen!=255 || tileTIS->Palette[0].rgbBlue!=0 || tileTIS->Palette[0].rgbRed!=0 ){
         continue;
      }
      if( deGreenTile(tileTIS->Bits, tileTISSave->Bits, 64, 64) ){
         tileTISSave->Palette[0].rgbRed = 41;
         tileTISSave->Palette[0].rgbGreen = 66;
         tileTISSave->Palette[0].rgbBlue = 97;
      }
  }


  CleanUpOpening();
  CleanUpSaving();

  tis_H->TilesNum = SwapInt(start_idx);

#ifdef _WIN32
 DWORD n;
  hSaveTISFile = ::CreateFile(TISSaveName, GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
#else
  hSaveTISFile = creat(TISSaveName, 0664);
#endif
  if( hSaveTISFile!=INVALID_HANDLE_VALUE ){
#ifdef _WIN32
    if( generate_header ) ::WriteFile(hSaveTISFile, TISBuffer, sizeof(TTIS_Header), &n, 0);
    ::WriteFile(hSaveTISFile, TISBuffer+sizeof(TTIS_Header), real_tiles*sizeof(TTIS_Tile), &n, 0);
#else
    if( generate_header ) write(hSaveTISFile, TISBuffer, sizeof(TTIS_Header));
    write(hSaveTISFile, TISBuffer+sizeof(TTIS_Header), real_tiles*sizeof(TTIS_Tile));
#endif

    if( ext_cnt ){ //TIS file output
      for(int i=0; i<ext_cnt; i++)
#ifdef _WIN32
          ::WriteFile(hSaveTISFile, extra_tiles[i], sizeof(TTIS_Tile), &n, 0);
      ::CloseHandle(hSaveTISFile); hSaveTISFile=INVALID_HANDLE_VALUE;
#else
          write(hSaveTISFile, extra_tiles[i], sizeof(TTIS_Tile));
      close(hSaveTISFile); hSaveTISFile=INVALID_HANDLE_VALUE;
#endif
    }
  }
  else{
     puts("\nError :\t Cannot save output area TIS file\n\n");
     if( logf ) fputs("\nError :\t Cannot save output area TIS file\n\n", logf);
  }


  for(int i=0; i<ext_cnt; i++) delete extra_tiles[i];
  delete[] extra_tiles;
  delete[] TISBuffer;


  if( delete_source ){
#ifdef _WIN32
    if( !::DeleteFile(WEDName) ){
#else
    if( unlink(WEDName) ){
#endif
      if( !silent_mode ) puts("\nWarning :\t Cannot delete source area WED file");
      if( logf ) fputs("\nWarning :\t Cannot delete source area WED file",logf);
    }
#ifdef _WIN32
    if( !::DeleteFile(TISName) ){
#else
    if( unlink(TISName) ){
#endif
      if( !silent_mode ) puts("\nWarning :\t Cannot delete source area TIS file");
      if( logf ) fputs("\nWarning :\t Cannot delete source area TIS file",logf);
    }
    strcpy(SrcName, src_path);
    strcat(SrcName, src_area_name);
    strcat(SrcName, ".mos");
#ifdef _WIN32
    if( !::DeleteFile(SrcName) ){
#else
    if( unlink(SrcName) ){
#endif
      if( !silent_mode ) puts("\nWarning :\t Cannot delete source area MOS file");
      if( logf ) fputs("\nWarning :\t Cannot delete source area MOS file",logf);
    }
    strcpy(SName, src_path);
    strcat(SName, src_area_code);
    strcpy(SrcName, SName);  strcat( SrcName, "ht.bmp");
#ifdef _WIN32
    if( !::DeleteFile(SrcName) ){
#else
    if( unlink(SrcName) ){
#endif
      if( !silent_mode ) puts("\nWarning :\t Cannot delete source area _HT.bmp file");
      if( logf ) fputs("\nWarning :\t Cannot delete source area _HT.bmp file",logf);
    }
    strcpy(SrcName, SName);  strcat( SrcName, "lm.bmp");
#ifdef _WIN32
    if( !::DeleteFile(SrcName) ){
#else
    if( unlink(SrcName) ){
#endif
      if( !silent_mode ) puts("\nWarning :\t Cannot delete source area _LM.bmp file");
      if( logf ) fputs("\nWarning :\t Cannot delete source area _LM.bmp file",logf);
    }
    strcpy(SrcName, SName);  strcat( SrcName, "ln.bmp");
#ifdef _WIN32
    ::DeleteFile(SrcName);
#else
    unlink(SrcName);
#endif
    strcpy(SrcName, SName);  strcat( SrcName, "sr.bmp");
#ifdef _WIN32
    if( !::DeleteFile(SrcName) ){
#else
    if( unlink(SrcName) ){
#endif
      if( !silent_mode ) puts("\nWarning :\t Cannot delete source area _SR.bmp file");
      if( logf ) fputs("\nWarning :\t Cannot delete source area _SR.bmp file",logf);
    }
  }


  if( !silent_mode ) printf("\rTiles processed: %4ld of %ld done.\nExtra %d overlay tiles added.\n\n", total_basic_tiles, total_basic_tiles, ext_cnt);
  if( logf ){
   fprintf(logf, "\nTiles processed: %ld done.\nExtra %d overlay tiles added.\n----------------------------------------\n\n", total_basic_tiles, ext_cnt);

   fclose(logf); logf=0;
  }
  return 0;
}
