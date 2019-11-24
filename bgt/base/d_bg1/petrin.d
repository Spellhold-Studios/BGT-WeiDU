BEGIN ~petrin~

IF WEIGHT #0 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 0
  SAY @15126
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @15127
  IF ~~ THEN UNSOLVED_JOURNAL @310187 EXIT
END

IF WEIGHT #4 ~Global("HelpPetrine","GLOBAL",0)~ THEN BEGIN 2
  SAY @15128
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~PartyHasItem("BGRING16")~ THEN BEGIN 3
  SAY @15129
  IF ~!Dead("PetrinesCat")~ THEN REPLY @20663 DO ~TakePartyItem("BGRING16")
AddexperienceParty(500)
EraseJournalEntry(@310187)
EraseJournalEntry(@310188)
EraseJournalEntry(@310189)
SetGlobal("HelpPetrine","GLOBAL",1)
SetGlobal("HelpBheren","GLOBAL",1)~ SOLVED_JOURNAL @310190 EXIT
  IF ~Dead("PetrinesCat")~ THEN REPLY @20664 GOTO 6
END

IF WEIGHT #3 ~false()~ THEN BEGIN 4
  SAY @15130
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~True()~ THEN BEGIN 5
  SAY @15131
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @20665
  IF ~~ THEN DO ~ReputationInc(-1)
EraseJournalEntry(@310187)
EraseJournalEntry(@310188)
EraseJournalEntry(@310189)
EscapeArea()~ SOLVED_JOURNAL @310191 EXIT
END
