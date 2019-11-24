BEGIN ~tethto~

IF WEIGHT #0 ~Global("Chapter","GLOBAL",7)~ THEN BEGIN 0
  SAY @9
  IF ~~ THEN JOURNAL @310784 EXIT
END

IF WEIGHT #1 ~Global("IronThroneMurder","GLOBAL",1)~ THEN BEGIN 1
  SAY @10
  IF ~~ THEN REPLY @7231 GOTO 7
  IF ~~ THEN REPLY @7232 DO ~SetGlobal("TethtorilTalk","GLOBAL",4)
SetGlobalTimer("Ulraunt","GLOBAL",20)~ EXIT
END

IF WEIGHT #2 ~Global("Arrested","GLOBAL",1)~ THEN BEGIN 2
  SAY @11
  IF ~~ THEN REPLY @13 GOTO 3
  IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @12
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Global("Chapter","GLOBAL",1)
NumTimesTalkedTo(0)~ THEN BEGIN 4
  SAY @15
  IF ~~ THEN DO ~SetGlobalTimer("Tethtoril","GLOBAL",120)~ EXIT
END

IF WEIGHT #5 ~Global("Chapter","GLOBAL",1)
NumTimesTalkedTo(1)~ THEN BEGIN 5
  SAY @90
  IF ~~ THEN DO ~SetGlobalTimer("Tethtoril","GLOBAL",240)~ EXIT
END

IF WEIGHT #6 ~Global("Chapter","GLOBAL",1)
NumTimesTalkedTo(2)~ THEN BEGIN 6
  SAY @264
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7233
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~Global("TalkedToFirebead","GLOBAL",1)~ THEN BEGIN 8
  SAY @16027
  IF ~~ THEN DO ~SetInterrupt(FALSE)
GiveItem("SCRL75",LastTalkedToBy)
SetGlobal("TalkedToFirebead","GLOBAL",2)
SetGlobalTimer("Tethtoril","GLOBAL",120)
SetInterrupt(TRUE)~ EXIT
END
