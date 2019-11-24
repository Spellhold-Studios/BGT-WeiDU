BEGIN ~wenric~

IF WEIGHT #1 ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
Global("HelpWenric","GLOBAL",0)~ THEN BEGIN 0
  SAY @14922
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
Global("HelpWenric","GLOBAL",0)~ THEN BEGIN 1
  SAY @14923
  IF ~~ THEN DO ~SetGlobal("HelpWenric","GLOBAL",1)~ UNSOLVED_JOURNAL @310552 EXIT
END

IF WEIGHT #3 ~Global("ZombiesDead","GLOBAL",20)~ THEN BEGIN 2
  SAY @14925
  IF ~~ THEN DO ~AddexperienceParty(800)
GivePartyGold(150)
IncrementGlobal("ZombiesDead","GLOBAL",1)
EraseJournalEntry(@310552)~ SOLVED_JOURNAL @310553 EXIT
END

IF WEIGHT #4 ~GlobalLT("ZombiesDead","GLOBAL",20)~ THEN BEGIN 3
  SAY @14926
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~false()~ THEN BEGIN 4
  SAY @14928
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~True()~ THEN BEGIN 5
  SAY @14929
  IF ~~ THEN EXIT
END
