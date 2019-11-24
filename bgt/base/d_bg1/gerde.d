BEGIN ~gerde~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15163
  IF ~~ THEN UNSOLVED_JOURNAL @310085 EXIT
END

IF ~Global("HelpGerde","GLOBAL",1)~ THEN BEGIN 1
  SAY @15164
  IF ~~ THEN DO ~SetGlobal("HelpGerde","GLOBAL",2)
GiveGoldForce(75)
EraseJournalEntry(@310085)
EraseJournalEntry(@310234)
EraseJournalEntry(@310235)
EscapeArea()~ SOLVED_JOURNAL @310086 EXIT
END

IF ~Global("HelpGerde","GLOBAL",0)~ THEN BEGIN 2
  SAY @15165
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @15166
  IF ~~ THEN EXIT
END

IF ~false()~ THEN BEGIN 4
  SAY @15167
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @15168
  IF ~~ THEN EXIT
END
