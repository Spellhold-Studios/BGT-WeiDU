BEGIN ~reevor~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @16210
  IF ~~ THEN UNSOLVED_JOURNAL @310007 EXIT
END

IF ~GlobalLT("RatsKilled","GLOBAL",5)
NumTimesTalkedToGT(3)~ THEN BEGIN 1
  SAY @16213
  IF ~~ THEN EXIT
END

IF ~GlobalLT("RatsKilled","GLOBAL",5)~ THEN BEGIN 2
  SAY @16211
  IF ~~ THEN EXIT
END

IF ~Global("RatsKilled","GLOBAL",5)~ THEN BEGIN 3
  SAY @16212
  IF ~~ THEN DO ~AddexperienceParty(50)
GivePartyGold(5)
IncrementGlobal("RatsKilled","GLOBAL",1)
EraseJournalEntry(@310007)~ SOLVED_JOURNAL @310008 EXIT
END

