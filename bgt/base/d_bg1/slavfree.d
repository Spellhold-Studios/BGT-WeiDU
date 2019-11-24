BEGIN ~slavfree~

IF ~Global("FREESLAV","GLOBAL",1)~ THEN BEGIN 0
  SAY @10424
  IF ~~ THEN DO ~ReputationInc(2)
AddexperienceParty(2000)
EraseJournalEntry(@310461)
EraseJournalEntry(@310463)
EraseJournalEntry(@310590)
EscapeArea()~ SOLVED_JOURNAL @320462 EXIT
END

IF ~Global("FREESLAV","GLOBAL",0)~ THEN BEGIN 1
  SAY @10425
  IF ~~ THEN DO ~ReputationInc(-2)
AddexperienceParty(800)
EraseJournalEntry(@310461)
EraseJournalEntry(@310463)
EraseJournalEntry(@310590)
EscapeArea()~ SOLVED_JOURNAL @330462 EXIT
END
