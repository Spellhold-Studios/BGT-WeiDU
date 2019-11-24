BEGIN ~ardrou~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15515
  IF ~~ THEN UNSOLVED_JOURNAL @310313 EXIT
END

IF ~GlobalLT("WorgsDead","GLOBAL",3)~ THEN BEGIN 1
  SAY @15516
  IF ~~ THEN EXIT
END

IF ~Global("WorgsDead","GLOBAL",3)~ THEN BEGIN 2
  SAY @15517
  IF ~~ THEN DO ~GivePartyGold(60)
AddexperienceParty(500)
ReputationInc(1)
IncrementGlobal("WorgsDead","GLOBAL",1)
EraseJournalEntry(@310313)~ SOLVED_JOURNAL @310314 EXIT
END

IF ~False()~ THEN BEGIN 3
  SAY @15518
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 4
  SAY @15519
  IF ~~ THEN EXIT
END
