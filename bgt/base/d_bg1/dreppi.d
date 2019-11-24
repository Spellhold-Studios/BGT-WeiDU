BEGIN ~dreppi~

IF WEIGHT #0 ~NumTimesTalkedTo(1)~ THEN BEGIN 0
  SAY @16006
  IF ~~ THEN UNSOLVED_JOURNAL @310005 EXIT
END

IF WEIGHT #4 ~!HasItem("POTN20",LastTalkedToBy)
Global("HelpDreppin","GLOBAL",0)~ THEN BEGIN 1
  SAY @16008
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~HasItem("POTN20",LastTalkedToBy)
Global("HelpDreppin","GLOBAL",0)~ THEN BEGIN 2
  SAY @16009
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItemNum("POTN20", 1)
SetGlobal("HelpDreppin","GLOBAL",1)
EraseJournalEntry(@310005)~ SOLVED_JOURNAL @310006 EXIT
END

IF WEIGHT #3 ~HasItem("POTN20",LastTalkedToBy)
!HasItem("CHAN01",LastTalkedToBy)
!HasItem("CHAN04",LastTalkedToBy)
Global("HelpDreppin","GLOBAL",0)~ THEN BEGIN 3
  SAY @16010
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItemNum("POTN20", 1)
SetGlobal("HelpDreppin","GLOBAL",1)
EraseJournalEntry(@310005)~ SOLVED_JOURNAL @310006 EXIT
END

IF WEIGHT #6 ~True()~ THEN BEGIN 4
  SAY @16011
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 5
  SAY @16030
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 6
  SAY @16031
  IF ~~ THEN EXIT
END