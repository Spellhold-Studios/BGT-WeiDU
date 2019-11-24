BEGIN ~jared~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15349
  IF ~~ THEN UNSOLVED_JOURNAL @310389 EXIT
END

IF ~false()~ THEN BEGIN 1
  SAY @15350
  IF ~~ THEN EXIT
END

IF ~Dead("JaredPbear")
Global("HelpJared","GLOBAL",0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @15351
  IF ~~ THEN DO ~AddexperienceParty(100)
SetGlobal("HelpJared","GLOBAL",1)
EraseJournalEntry(@310389)
EscapeArea()~ SOLVED_JOURNAL @310390 EXIT
END

IF ~Dead("JaredPbear")
Global("HelpJared","GLOBAL",0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 3
  SAY @15352
  IF ~~ THEN DO ~AddexperienceParty(150)
SetGlobal("HelpJared","GLOBAL",1)
GivePartyGold(50)
EraseJournalEntry(@310389)
EscapeArea()~ SOLVED_JOURNAL @310390 EXIT
END

IF ~Dead("JaredPbear")
Global("HelpJared","GLOBAL",0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 4
  SAY @15353
  IF ~~ THEN DO ~AddexperienceParty(150)
SetGlobal("HelpJared","GLOBAL",1)
GiveItem("BOOT03",LastTalkedToBy)
EraseJournalEntry(@310389)
EscapeArea()~ SOLVED_JOURNAL @310390 EXIT
END

IF ~Global("HelpJared","GLOBAL",0)~ THEN BEGIN 5
  SAY @15356
  IF ~~ THEN EXIT
END
