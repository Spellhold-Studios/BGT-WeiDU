BEGIN ~delainy2~

IF WEIGHT #1 ~Global("NotHelp","GLOBAL",1)~ THEN BEGIN 0
  SAY @21706
  IF ~~ THEN DO ~EraseJournalEntry(@310696)
EraseJournalEntry(@310704)
EraseJournalEntry(@310705)
EraseJournalEntry(@310706)~ SOLVED_JOURNAL @310711 EXIT
END

IF WEIGHT #2 ~Global("WillHelpEscape","GLOBAL",1)~ THEN BEGIN 1
  SAY @21707
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetGlobal("durl","GLOBAL",1)
MoveToPoint([1576.1431])
DialogInterrupt(TRUE)
EraseJournalEntry(@310696)
EraseJournalEntry(@310704)
EraseJournalEntry(@310705)
EraseJournalEntry(@310706)~ SOLVED_JOURNAL @310712 EXIT
END

IF WEIGHT #0 ~Global("durl","GLOBAL",1)~ THEN BEGIN 2
  SAY @22993
  IF ~~ THEN DO ~EraseJournalEntry(@310696)
EraseJournalEntry(@310704)
EraseJournalEntry(@310705)
EraseJournalEntry(@310706)~ SOLVED_JOURNAL @310713 EXIT
END
