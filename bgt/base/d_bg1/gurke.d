BEGIN ~gurke~

IF ~~ THEN BEGIN 0
  SAY @15486
  IF ~~ THEN EXIT
END

IF ~Global("HelpGurke","GLOBAL",0)~ THEN BEGIN 1
  SAY @15487
  IF ~~ THEN DO ~SetGlobal("HelpGurke","GLOBAL",1)~ UNSOLVED_JOURNAL @310029 EXIT
END

IF ~Global("HelpGurke","GLOBAL",1)
!PartyHasItem("CLCK06")~ THEN BEGIN 2
  SAY @15488
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @15489
  IF ~~ THEN DO ~AddexperienceParty(300)
GivePartyGold(280)
TakePartyItem("CLCK06")
SetGlobal("HelpGurke","GLOBAL",2)
EraseJournalEntry(@310029)~ SOLVED_JOURNAL @310030 EXIT
END

IF ~Global("HelpGurke","GLOBAL",1)~ THEN BEGIN 4
  SAY @15490
  IF ~~ THEN DO ~AddexperienceParty(300)
SetGlobal("HelpGurke","GLOBAL",2)
EraseJournalEntry(@310029)~ SOLVED_JOURNAL @310031 EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @15491
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 6
  SAY @15492
  IF ~~ THEN EXIT
END
