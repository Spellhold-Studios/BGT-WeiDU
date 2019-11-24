BEGIN ~orduli~

IF ~~ THEN BEGIN 0
  SAY @15036
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~NumTimesTalkedTo(0)
ReputationLT(LastTalkedToBy,15)~ THEN BEGIN 1
  SAY @15037
  IF ~~ THEN UNSOLVED_JOURNAL @310239 EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(0)
ReputationGT(LastTalkedToBy,14)~ THEN BEGIN 2
  SAY @15038
  IF ~~ THEN UNSOLVED_JOURNAL @310240 EXIT
END

IF WEIGHT #4 ~Global("HelpOrdulinian","GLOBAL",0)~ THEN BEGIN 3
  SAY @15039
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~Global("HelpOrdulinian","GLOBAL",0)
PartyHasItem("BGAMUL13")
PartyHasItem("BGRING12")~ THEN BEGIN 4
  SAY @15040
  IF ~~ THEN DO ~GiveItemCreate("CLCK06",LastTalkedToBy,0,0,0)
SetGlobal("HelpOrdulinian","GLOBAL",1)
AddexperienceParty(3500)
EraseJournalEntry(@310240)
EraseJournalEntry(@310239)
EraseJournalEntry(@310241)
EraseJournalEntry(@310242)
EraseJournalEntry(@310243)
~ SOLVED_JOURNAL @310244 EXIT
END

IF WEIGHT #3 ~false()~ THEN BEGIN 5
  SAY @15041
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~True()~ THEN BEGIN 6
  SAY @15042
  IF ~~ THEN EXIT
END
