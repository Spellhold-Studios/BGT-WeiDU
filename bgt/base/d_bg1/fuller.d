BEGIN ~fuller~

IF WEIGHT #4 ~True()~ THEN BEGIN 0
  SAY @16012
  IF ~Global("HelpHull","GLOBAL",1)~ THEN REPLY @16014 GOTO 1
  IF ~~ THEN REPLY @16013 GOTO 2
  IF ~Global("HelpFuller","GLOBAL",0)~ THEN REPLY @16017 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @16015
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @16016
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @16018
  IF ~~ THEN DO ~SetGlobal("HelpFuller","GLOBAL",2)~ UNSOLVED_JOURNAL @310012 EXIT
END

IF WEIGHT #0 ~!HasItem("BOLT01",LastTalkedToBy)
Global("HelpFuller","GLOBAL",2)~ THEN BEGIN 4
  SAY @16020
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Global("HelpFuller","GLOBAL",2)~ THEN BEGIN 5
  SAY @16021
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItem("BOLT01")
GiveItem("DAGG02",LastTalkedToBy)
SetGlobal("HelpFuller","GLOBAL",1)
EraseJournalEntry(@310012)~ SOLVED_JOURNAL @310013 EXIT
END

IF WEIGHT #2 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Global("HelpFuller","GLOBAL",2)~ THEN BEGIN 6
  SAY @16022
  IF ~~ THEN DO ~TakePartyItem("BOLT01")
AddexperienceParty(50)
GivePartyGold(10)
SetGlobal("HelpFuller","GLOBAL",1)
EraseJournalEntry(@310012)~ SOLVED_JOURNAL @310014 EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 7
  SAY @16033
  IF ~~ THEN DO ~~ EXIT
END