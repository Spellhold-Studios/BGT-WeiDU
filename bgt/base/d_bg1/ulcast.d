BEGIN ~ulcast~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @18294
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @18295
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @18296
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~True()~ THEN BEGIN 3
  SAY @18300
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(3)~ THEN BEGIN 4
  SAY @11879
  IF ~~ THEN UNSOLVED_JOURNAL @310547 EXIT
END

IF WEIGHT #4 ~PartyHasItem("Book54")~ THEN BEGIN 5
  SAY @11881
  IF ~~ THEN DO ~AddexperienceParty(1000)
TakePartyItem("BOOK54")
EraseJournalEntry(@310547)
EraseJournalEntry(@310567)~ SOLVED_JOURNAL @310548 EXIT
END

IF WEIGHT #5 ~Dead("Doomsayer")
PartyHasItem("MISC82")
PartyHasItem("MISC48")~ THEN BEGIN 6
  SAY @22696
  IF ~~ THEN DO ~TakePartyItem("MISC82")
TakePartyItem("MISC48")
GiveItemCreate("SW1H19",LastTalkedToBy,0,0,0)~ EXIT
END
