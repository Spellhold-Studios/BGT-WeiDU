BEGIN ~durlyle2~

IF WEIGHT #1 ~Global("NotHelp","GLOBAL",1)~ THEN BEGIN 0
  SAY @21697
  IF ~~ THEN DO ~EraseJournalEntry(@310714)
EraseJournalEntry(@310718)
EraseJournalEntry(@310719)
EraseJournalEntry(@310720)~ SOLVED_JOURNAL @310725 EXIT
END

IF WEIGHT #2 ~Global("WillHelpEscape","GLOBAL",1)~ THEN BEGIN 1
  SAY @21698
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetGlobal("durl","GLOBAL",1)
MoveToPoint([1576.1431])
DialogInterrupt(TRUE)
EraseJournalEntry(@310714)
EraseJournalEntry(@310718)
EraseJournalEntry(@310719)
EraseJournalEntry(@310720)~ SOLVED_JOURNAL @310726 EXIT
END

IF WEIGHT #0 ~Global("durl","GLOBAL",1)~ THEN BEGIN 2
  SAY @22992
  IF ~~ THEN DO ~EraseJournalEntry(@310714)
EraseJournalEntry(@310718)
EraseJournalEntry(@310719)
EraseJournalEntry(@310720)~ SOLVED_JOURNAL @310727 EXIT
END
