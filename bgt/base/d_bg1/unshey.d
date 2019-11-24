BEGIN ~unshey~

IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @14948
  IF ~~ THEN EXIT
END

IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @14949
  IF ~~ THEN UNSOLVED_JOURNAL @310017 EXIT
END

IF ~!NumTimesTalkedTo(0)
!PartyHasItem("BELT04")~ THEN BEGIN 2
  SAY @14950
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @14951
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("BELT04")
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN BEGIN 4
  SAY @14952
  IF ~~ THEN DO ~AddexperienceParty(800)
GivePartyGold(70)
EraseJournalEntry(@310017)
TakePartyItem("BELT04")~ SOLVED_JOURNAL @310018 EXIT
END

IF ~PartyHasItem("BELT04")
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 5
  SAY @14953
  IF ~~ THEN DO ~AddexperienceParty(800)
GivePartyGold(95)
TakePartyItem("BELT04")
EraseJournalEntry(@310017)
GiveItem("BOOK32",LastTalkedToBy)~ SOLVED_JOURNAL @310019 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @14954
  IF ~~ THEN DO ~EraseJournalEntry(@310017)~ SOLVED_JOURNAL @310020 EXIT
END

IF ~false()~ THEN BEGIN 7
  SAY @14955
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 8
  SAY @14956
  IF ~~ THEN EXIT
END
