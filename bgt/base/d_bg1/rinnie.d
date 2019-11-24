BEGIN ~rinnie~

IF WEIGHT #0 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 0
  SAY @15138
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @15139
  IF ~~ THEN UNSOLVED_JOURNAL @310178 EXIT
END

IF WEIGHT #5 ~Global("HelpRinnie","GLOBAL",0)~ THEN BEGIN 2
  SAY @15140
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~PartyHasItem("BOOK55")
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Global("HelpRinnie","GLOBAL",0)~ THEN BEGIN 3
  SAY @15141
  IF ~~ THEN DO ~TakePartyItem("BOOK55")
GiveItem("SCRL08",LastTalkedToBy)
SetGlobal("HelpRinnie","GLOBAL",1)
EraseJournalEntry(@310178)
AddexperienceParty(900)~ SOLVED_JOURNAL @310179 EXIT
END

IF WEIGHT #3 ~false()~ THEN BEGIN 4
  SAY @15142
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #6 ~True()~ THEN BEGIN 5
  SAY @15143
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~PartyHasItem("BOOK55")
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Global("HelpRinnie","GLOBAL",0)~ THEN BEGIN 6
  SAY @15144
  IF ~~ THEN DO ~TakePartyItem("BOOK55")
SetGlobal("HelpRinnie","GLOBAL",1)
AddexperienceParty(400)
EraseJournalEntry(@310178)
GiveGoldForce(80)~ SOLVED_JOURNAL @310179 EXIT
END
