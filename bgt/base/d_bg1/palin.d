BEGIN ~palin~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21869
  IF ~~ THEN REPLY @21890 GOTO 1
  IF ~~ THEN REPLY @21892 GOTO 2
  IF ~~ THEN REPLY @21894 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @21873
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
MoveToPoint([2010.3323])
SetGlobal("PalinMove","GLOBAL",1)
DialogInterrupt(TRUE)~ UNSOLVED_JOURNAL @310676 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @21875
  IF ~~ THEN DO ~CreateCreature("WOLFWE",[2336.3292],0)
CreateCreature("WOLFWE",[2352.3450],0)
CreateCreature("WOLFWE",[2255.3480],0)
CreateCreature("WOLFWEGL",[2135.3516],0)
EraseJournalEntry(@310676)
Enemy()
MoveToPoint([1994.3323])~ SOLVED_JOURNAL @310677 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21878
  IF ~~ THEN GOTO 1
END

IF ~Global("PalinMove","GLOBAL",1)~ THEN BEGIN 4
  SAY @21881
  IF ~~ THEN REPLY @21897 DO ~SetGlobal("PalinMove","GLOBAL",2)~ GOTO 6
  IF ~~ THEN REPLY @21896 DO ~SetGlobal("PalinMove","GLOBAL",2)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @21882
  IF ~~ THEN DO ~CreateCreature("WOLFWE",[2336.3292],0)
CreateCreature("WOLFWE",[2352.3450],0)
CreateCreature("WOLFWE",[2255.3480],0)
CreateCreature("WOLFWEGL",[2135.3516],0)
EraseJournalEntry(@310676)
Enemy()~ SOLVED_JOURNAL @310677 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21885
  IF ~~ THEN DO ~CreateCreature("WOLFWE",[2336.3292],0)
CreateCreature("WOLFWE",[2352.3450],0)
CreateCreature("WOLFWE",[2255.3480],0)
CreateCreature("WOLFWEGL",[2135.3516],0)
EraseJournalEntry(@310676)
Enemy()~ SOLVED_JOURNAL @310677 EXIT
END
