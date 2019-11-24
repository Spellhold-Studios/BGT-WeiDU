BEGIN ~norale~

IF WEIGHT #0 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 0
  SAY @15092
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @15093
  IF ~~ THEN UNSOLVED_JOURNAL @310286 EXIT
END

IF WEIGHT #4 ~Global("HelpNoralee","GLOBAL",0)~ THEN BEGIN 2
  SAY @15094
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
PartyHasItem("BRAC09")~ THEN BEGIN 3
  SAY @15095
  IF ~~ THEN DO ~SetGlobal("HelpNoralee","GLOBAL",1)
TakePartyItem("BRAC09")
GivePartyGold(45)
AddexperienceParty(1000)
ReputationInc(1)
EraseJournalEntry(@310286)
EscapeArea()~ SOLVED_JOURNAL @310287 EXIT
END

IF WEIGHT #3 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
PartyHasItem("BRAC09")~ THEN BEGIN 4
  SAY @15096
  IF ~~ THEN DO ~SetGlobal("HelpNoralee","GLOBAL",1)
TakePartyItem("BRAC09")
AddexperienceParty(1000)
ReputationInc(1)
GiveItem("POTN30",LastTalkedToBy)
GiveItem("POTN30",LastTalkedToBy)
EraseJournalEntry(@310286)
EscapeArea()~ SOLVED_JOURNAL @310287 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @15097
  IF ~~ THEN DO ~Enemy()~ EXIT
END
