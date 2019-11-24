BEGIN ~gervis~

IF ~false()~ THEN BEGIN 0
  SAY @15314
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @15323
  IF ~~ THEN DO ~CreateCreature("VOLTIN",[705.246],3)~ UNSOLVED_JOURNAL @310162 EXIT
END

IF ~Dead("Voltine")~ THEN BEGIN 2
  SAY @15327
  IF ~~ THEN DO ~SetGlobal("HelpLaerta","GLOBAL",1)
EraseJournalEntry(@310162)
EraseJournalEntry(@310163)
EraseJournalEntry(@310164)
EscapeArea()~ SOLVED_JOURNAL @310166 EXIT
END

IF ~!Dead("Voltine")~ THEN BEGIN 3
  SAY @15328
  IF ~~ THEN EXIT
END

IF ~false()~ THEN BEGIN 4
  SAY @15338
  IF ~~ THEN EXIT
END
