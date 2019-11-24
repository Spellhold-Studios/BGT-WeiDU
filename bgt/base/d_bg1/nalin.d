BEGIN ~nalin~

IF ~True()~ THEN BEGIN 0
  SAY @750
  IF ~Global("MetBrage","GLOBAL",0)~ THEN GOTO 1
  IF ~PartyHasItem("MISC65")~ THEN GOTO 2
  IF ~Global("MetBrage","GLOBAL",1)
!PartyHasItem("MISC65")~ THEN DO ~StartStore("Tem4802",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @753
  IF ~~ THEN REPLY @15277 DO ~StartStore("Tem4802",LastTalkedToBy())~ UNSOLVED_JOURNAL @310055 EXIT
  IF ~~ THEN REPLY @15278 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @754
  IF ~~ THEN DO ~TakePartyItem("MISC65")
GivePartyGold(250)
SetGlobal("OublekBounty1","GLOBAL",1)
EraseJournalEntry(@310055)
EraseJournalEntry(@310058)
EraseJournalEntry(@310302)
EraseJournalEntry(@310303)
EraseJournalEntry(@310304)
EraseJournalEntry(@310305)
EraseJournalEntry(@310306)
EraseJournalEntry(@310308)
EraseJournalEntry(@310551)
EraseJournalEntry(@310563)
EraseJournalEntry(@310570)
EraseJournalEntry(@310059)~ SOLVED_JOURNAL @310057 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @755
  IF ~~ THEN EXTERN ~BRAGE~ 7
END

IF ~~ THEN BEGIN 4
  SAY @757
  IF ~~ THEN DO ~SetGlobal("OublekBounty1","GLOBAL",1)
GivePartyGold(1000)
EraseJournalEntry(@310055)
EraseJournalEntry(@310058)
EraseJournalEntry(@310302)
EraseJournalEntry(@310303)
EraseJournalEntry(@310304)
EraseJournalEntry(@310305)
EraseJournalEntry(@310306)
EraseJournalEntry(@310308)
EraseJournalEntry(@310551)
EraseJournalEntry(@310563)
EraseJournalEntry(@310570)
EraseJournalEntry(@310059)~ SOLVED_JOURNAL @310056 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @15279
  IF ~~ THEN REPLY @15280 DO ~StartStore("Tem4802",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15281 EXIT
END
