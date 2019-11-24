BEGIN ~nadin~

IF WEIGHT #0 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 0
  SAY @15235
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @15236
  IF ~~ THEN DO ~GiveItem("AMUL14",LastTalkedToBy)
SetGlobal("GivenEuricQuest", "GLOBAL",1)~ UNSOLVED_JOURNAL @310237 EXIT
END

IF WEIGHT #2 ~Global("HelpEuric","GLOBAL",0)
Global("GivenEuricQuest", "GLOBAL",1)~ THEN BEGIN 2
  SAY @15237
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~GlobalGT("HelpEuric","GLOBAL",0)
GlobalLT("HelpEuric","GLOBAL",2)
!Dead("Euric")
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN BEGIN 3
  SAY @15238
  IF ~~ THEN DO ~SetGlobal("HelpEuric","GLOBAL",2)
AddexperienceParty(300)
ReputationInc(1)
GiveItem("AMUL01",LastTalkedToBy)
EraseJournalEntry(@310237)
EraseJournalEntry(@311238)
EscapeArea()~ SOLVED_JOURNAL @310238 EXIT
END

IF WEIGHT #6 ~Global("HelpEuric","GLOBAL",2)~ THEN BEGIN 4
  SAY @15239
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~false()~ THEN BEGIN 5
  SAY @15240
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~GlobalGT("HelpEuric","GLOBAL",0)
GlobalLT("HelpEuric","GLOBAL",2)
!Dead("Euric")
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 6
  SAY @15241
  IF ~~ THEN DO ~SetGlobal("HelpEuric","GLOBAL",2)
AddexperienceParty(400)
ReputationInc(1)
GiveItem("AMUL01",LastTalkedToBy)
EraseJournalEntry(@310237)
EraseJournalEntry(@311238)
EscapeArea()~ SOLVED_JOURNAL @310238 EXIT
END
