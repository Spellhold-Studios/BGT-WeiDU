BEGIN ~phlydi~

IF WEIGHT #0 ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15993
  IF ~~ THEN UNSOLVED_JOURNAL @310000 EXIT
END

IF WEIGHT #4 ~!HasItem("BOOK16",LastTalkedToBy)
Global("HelpPhlydia","GLOBAL",0)~ THEN BEGIN 1
  SAY @16003
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
HasItem("BOOK16",LastTalkedToBy)~ THEN BEGIN 2
  SAY @16004
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItem("BOOK16")
GiveItem("MISC17",LastTalkedToBy)
SetGlobal("HelpPhlydia","GLOBAL",1)
EraseJournalEntry(@310000)~ SOLVED_JOURNAL @310001 EXIT
END

IF WEIGHT #2 ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
HasItem("BOOK16",LastTalkedToBy)~ THEN BEGIN 3
  SAY @16005
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItem("BOOK16")
SetGlobal("HelpPhlydia","GLOBAL",1)
EraseJournalEntry(@310000)~ SOLVED_JOURNAL @310002 EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 4
  SAY @16029
  IF ~~ THEN EXIT
END
