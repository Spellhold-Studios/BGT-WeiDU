BEGIN ~cutsilk~

IF ~True()~ THEN BEGIN 0
  SAY @13900
  IF ~~ THEN EXTERN ~MERSIL~ 0
END

IF ~~ THEN BEGIN 1
  SAY @13930
  IF ~~ THEN EXTERN ~MERSIL~ 1
END

IF ~~ THEN BEGIN 2
  SAY @13931
  IF ~~ THEN REPLY @13932 DO ~ActionOverride("Merchant1",Enemy())
ActionOverride("Merchant2",Enemy())
ActionOverride("Merchant3",Enemy())~ GOTO 3
  IF ~~ THEN REPLY @13933 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @13934
  IF ~~ THEN EXTERN ~GARRIC~ 5
END

IF ~~ THEN BEGIN 4
  SAY @13935
  IF ~~ THEN DO ~SetGlobal("AttackedSilke","GLOBAL",1)
Enemy()
SetDialog("Silke")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @13936
  IF ~~ THEN DO ~SetDialog("Silke")~ EXIT
END
