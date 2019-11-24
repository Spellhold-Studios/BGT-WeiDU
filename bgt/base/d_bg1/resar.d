BEGIN ~resar~

IF ~~ THEN BEGIN 0
  SAY @2837
  IF ~~ THEN DO ~SetGlobal("ResarAttack","GLOBAL",1)
EraseJournalEntry(@310248)
EraseJournalEntry(@310261)
EraseJournalEntry(@310386)
Shout(3)
Enemy()~ SOLVED_JOURNAL @310262 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @2838
  IF ~~ THEN DO ~SetGlobal("ResarAttack","GLOBAL",1)
EraseJournalEntry(@310248)
EraseJournalEntry(@310261)
EraseJournalEntry(@310386)
Shout(3)
Enemy()~ SOLVED_JOURNAL @310263 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2839
  IF ~~ THEN DO ~SetGlobal("ResarAttack","GLOBAL",1)
EraseJournalEntry(@310248)
EraseJournalEntry(@310261)
EraseJournalEntry(@310386)
Shout(3)
Enemy()~ SOLVED_JOURNAL @310263 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2840
  IF ~~ THEN DO ~SetGlobal("ResarAttack","GLOBAL",1)
Shout(3)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2841
  IF ~~ THEN DO ~Kill("Resar")~ EXTERN ~ALATOS~ 15
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @6474
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9069
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 7
  SAY @10088
  IF ~~ THEN EXIT
END
