BEGIN ~nemphr~

IF WEIGHT #5 ~True()~ THEN BEGIN 0
  SAY @15019
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("HelpNemphre","GLOBAL",0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Gender(LastTalkedToBy,MALE)~ THEN BEGIN 1
  SAY @15020
  IF ~~ THEN DO ~SetGlobal("HelpNemphre","GLOBAL",1)~ UNSOLVED_JOURNAL @310241 EXIT
END

IF WEIGHT #1 ~Global("HelpNemphre","GLOBAL",0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,MALE)~ THEN BEGIN 2
  SAY @15021
  IF ~~ THEN DO ~SetGlobal("HelpNemphre","GLOBAL",1)~ UNSOLVED_JOURNAL @310242 EXIT
END

IF WEIGHT #2 ~PartyHasItem("BGAMUL13")
Global("HelpNemphre","GLOBAL",1)~ THEN BEGIN 3
  SAY @15022
  IF ~~ THEN DO ~SetGlobal("HelpNemphre","GLOBAL",2)
TakePartyItem("BGAMUL13")
GiveItem("SCRL1Q",LastTalkedToBy)
AddexperienceParty(1000)
EraseJournalEntry(@310241)
EraseJournalEntry(@310242)~ SOLVED_JOURNAL @310246 EXIT
END

IF WEIGHT #3 ~Global("HelpNemphre","GLOBAL",1)~ THEN BEGIN 4
  SAY @15023
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~false()~ THEN BEGIN 5
  SAY @15024
  IF ~~ THEN EXIT
END
