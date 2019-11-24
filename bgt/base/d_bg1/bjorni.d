BEGIN ~bjorni~

IF ~False()~ THEN BEGIN 0
  SAY @15493
  IF ~~ THEN EXIT
END

IF ~Global("HelpBjornin","GLOBAL",0)~ THEN BEGIN 1
  SAY @15494
  IF ~~ THEN DO ~SetGlobal("HelpBjornin","GLOBAL",2)~ UNSOLVED_JOURNAL @310036 EXIT
END

IF ~Global("HelpBjornin","GLOBAL",2)
GlobalLT("OgresKilled","GLOBAL",4)~ THEN BEGIN 2
  SAY @15495
  IF ~~ THEN EXIT
END

IF ~Global("HelpBjornin","GLOBAL",2)~ THEN BEGIN 3
  SAY @15496
  IF ~~ THEN DO ~SetGlobal("HelpBjornin","GLOBAL",1)
GiveItem("SHLD04",LastTalkedToBy)
EraseJournalEntry(@310036)
AddexperienceParty(400)
ReputationInc(1)~ SOLVED_JOURNAL @310037 EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @15497
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 5
  SAY @15498
  IF ~~ THEN EXIT
END
