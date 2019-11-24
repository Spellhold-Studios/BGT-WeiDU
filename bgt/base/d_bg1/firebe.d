BEGIN ~firebe~

IF WEIGHT #2 ~IsGabber(Player1)
PartyGoldLT(100)
Global("FirebeadDone","GLOBAL",0)~ THEN BEGIN 0
  SAY @14991
  IF ~~ THEN DO ~SetGlobal("TalkedToFirebead","GLOBAL",1)~ EXIT
END

IF WEIGHT #3 ~IsGabber(Player1)
!PartyGoldLT(100)
Global("FirebeadDone","GLOBAL",0)~ THEN BEGIN 1
  SAY @14993
  IF ~~ THEN DO ~SetGlobal("TalkedToFirebead","GLOBAL",1)~ UNSOLVED_JOURNAL @310032 EXIT
END

IF WEIGHT #0 ~IsGabber(Player1)
PartyHasItem("BOOK40")
Global("TalkedToFirebead","GLOBAL",1)
Global("FirebeadDone","GLOBAL",0)~ THEN BEGIN 2
  SAY @14994
  IF ~~ THEN DO ~AddexperienceParty(300)
ReputationInc(1)
TakePartyItem("BOOK40")
GiveItem("BOOK36",LastTalkedToBy)
SetGlobal("FirebeadDone","GLOBAL",1)
EraseJournalEntry(@310032)~ SOLVED_JOURNAL @310033 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @14995
  IF ~~ THEN DO ~TakePartyItem("BOOK40")
GiveItem("BOOK55",LastTalkedToBy)
SetGlobal("FirebeadDone","GLOBAL",1)
EraseJournalEntry(@310032)~ SOLVED_JOURNAL @310033 EXIT
END

IF WEIGHT #1 ~False()~ THEN BEGIN 4
  SAY @14996
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~IsGabber(Player1)
Global("FirebeadDone","GLOBAL",0)~ THEN BEGIN 5
  SAY @14997
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~IsGabber(Player1)
True()~ THEN BEGIN 6
  SAY @14998
  IF ~~ THEN EXIT
END
