BEGIN ~marek~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1420
  IF ~~ THEN REPLY @1425 GOTO 1
  IF ~~ THEN REPLY @1426 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @1421
  IF ~~ THEN REPLY @1428 GOTO 2
  IF ~~ THEN REPLY @1429 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @1422
  IF ~~ THEN DO ~ActionOverride("Lothander",EscapeArea())
SetGlobal("LothanderMove","GLOBAL",3)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1423
  IF ~~ THEN REPLY @1427 DO ~ActionOverride("Lothander",EscapeArea())
SetGlobal("LothanderMove","GLOBAL",3)
EscapeArea()~ UNSOLVED_JOURNAL @310591 EXIT
  IF ~~ THEN REPLY @1430 DO ~ActionOverride("Lothander",EscapeArea())
SetGlobal("LothanderMove","GLOBAL",3)
EscapeArea()~ EXIT
END

IF WEIGHT #3 ~Global("MarekMove","GLOBAL",1)~ THEN BEGIN 4
  SAY @1424
  IF ~~ THEN DO ~SetGlobal("PartyCured","GLOBAL",1)
AddexperienceParty(10000)
EraseJournalEntry(@310221)
EraseJournalEntry(@310222)
EraseJournalEntry(@310223)
EraseJournalEntry(@310224)
EraseJournalEntry(@310346)
EraseJournalEntry(@310236)
Enemy()~ SOLVED_JOURNAL @310225 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @6296
  IF ~~ THEN DO ~SetGlobal("PartyCured","GLOBAL",1)
AddexperienceParty(10000)
EraseJournalEntry(@310221)
EraseJournalEntry(@310222)
EraseJournalEntry(@310223)
EraseJournalEntry(@310224)
EraseJournalEntry(@310346)
EraseJournalEntry(@310236)
EscapeArea()~ SOLVED_JOURNAL @310225 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9167
  IF ~~ THEN EXIT
END
