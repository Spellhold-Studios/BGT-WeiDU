BEGIN ~chanth~

IF ~True()~ THEN BEGIN 0
  SAY @8523
  IF ~~ THEN REPLY @16637 EXIT
  IF ~~ THEN REPLY @16638 DO ~StartStore("tem0132",LastTalkedToBy())~ EXIT
  IF ~Global("HelpJalantha","GLOBAL",1)
Global("TalkedToUlbright","GLOBAL",0)~ THEN REPLY @16639 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @8524
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @16642
  IF ~PartyGoldGT(499)~ THEN REPLY @16643 GOTO 5
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @16645 GOTO 3
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @16646 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @16647
  IF ~~ THEN DO ~SetGlobal("TalkedToUlbright","GLOBAL",1)
GiveItem("BOOK08",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @16648
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16649
  IF ~~ THEN DO ~SetGlobal("TalkedToUlbright","GLOBAL",1)
GiveItem("BOOK08",LastTalkedToBy)~ EXIT
END
