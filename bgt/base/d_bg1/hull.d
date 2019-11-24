BEGIN ~hull~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15952
  IF ~~ THEN DO ~SetGlobal("HelpHull","GLOBAL",1)~ UNSOLVED_JOURNAL @310009 EXIT
END

IF WEIGHT #1 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
HasItem("SW1H12",LastTalkedToBy)~ THEN BEGIN 1
  SAY @15983
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItem("SW1H12")
GivePartyGold(20)
SetGlobal("HelpHull","GLOBAL",2)
EraseJournalEntry(@310009)~ SOLVED_JOURNAL @310010 EXIT
END

IF WEIGHT #5 ~Global("HelpHull","GLOBAL",1)~ THEN BEGIN 2
  SAY @15984
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
HasItem("SW1H12",LastTalkedToBy)~ THEN BEGIN 3
  SAY @15985
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItem("SW1H12")
GivePartyGold(10)
SetGlobal("HelpHull","GLOBAL",2)
EraseJournalEntry(@310009)~ SOLVED_JOURNAL @310011 EXIT
END

IF WEIGHT #3 ~!Global("HelpHull","GLOBAL",1)~ THEN BEGIN 4
  SAY @15987
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~False()~ THEN BEGIN 5
  SAY @16032
  IF ~~ THEN EXIT
END
