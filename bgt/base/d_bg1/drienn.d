BEGIN ~drienn~

IF WEIGHT #7 ~Global("HelpDrienne","GLOBAL",0)~ THEN BEGIN 0
  SAY @14851
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @14852
  IF ~~ THEN UNSOLVED_JOURNAL @310144 EXIT
END

IF WEIGHT #3 ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
PartyHasItem("MISC62")~ THEN BEGIN 2
  SAY @14853
  IF ~~ THEN DO ~TakePartyItem("MISC62")
EraseJournalEntry(@310144)~ SOLVED_JOURNAL @310145 EXIT
END

IF WEIGHT #4 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
PartyHasItem("MISC62")~ THEN BEGIN 3
  SAY @14854
  IF ~~ THEN DO ~AddexperienceParty(200)
SetGlobal("HelpDrienne","GLOBAL",1)
GivePartyGold(23)
EraseJournalEntry(@310144)
TakePartyItem("MISC62")~ SOLVED_JOURNAL @310146 EXIT
END

IF WEIGHT #5 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
PartyHasItem("MISC62")~ THEN BEGIN 4
  SAY @14855
  IF ~~ THEN DO ~AddexperienceParty(200)
ReputationInc(1)
SetGlobal("HelpDrienne","GLOBAL",1)
GiveItem("SCRL09",LastTalkedToBy)
EraseJournalEntry(@310144)
TakePartyItem("MISC62")~ SOLVED_JOURNAL @310147 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @14856
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~false()~ THEN BEGIN 6
  SAY @14857
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~Global("HelpDrienne","GLOBAL",1)~ THEN BEGIN 7
  SAY @14858
  IF ~~ THEN EXIT
END
