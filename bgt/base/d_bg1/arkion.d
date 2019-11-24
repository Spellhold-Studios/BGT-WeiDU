BEGIN ~arkion~

IF ~~ THEN BEGIN 0
  SAY @15010
  IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @15011
  IF ~~ THEN UNSOLVED_JOURNAL @310243 EXIT
END

IF WEIGHT #4 ~Global("HelpArkion","GLOBAL",0)~ THEN BEGIN 2
  SAY @15014
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~PartyHasItem("MISC80")
Global("HelpArkion","GLOBAL",0)~ THEN BEGIN 3
  SAY @15015
  IF ~~ THEN DO ~SetGlobal("HelpArkion","GLOBAL",1)
TakePartyItem("MISC80")
GivePartyGold(250)
AddexperienceParty(1800)
EraseJournalEntry(@310243)~ SOLVED_JOURNAL @310245 EXIT
END

IF WEIGHT #1 ~NumItemsPartyGT("MISC80",1)
Global("HelpArkion","GLOBAL",0)~ THEN BEGIN 4
  SAY @15016
  IF ~~ THEN DO ~SetGlobal("HelpArkion","GLOBAL",1)
TakePartyItemAll("MISC80")
GivePartyGold(400)
AddexperienceParty(1800)
EraseJournalEntry(@310243)~ SOLVED_JOURNAL @310245 EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 5
  SAY @15017
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #5 ~True()~ THEN BEGIN 6
  SAY @15018
  IF ~~ THEN EXIT
END
