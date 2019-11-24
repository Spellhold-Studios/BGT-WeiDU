ADD_STATE_TRIGGER ~edwinp~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 3 4 6 7 8


APPEND ~edwinp~

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN s0
  SAY @15463
  IF ~~ THEN REPLY @15464 GOTO s2
  IF ~~ THEN REPLY @15465 GOTO s1
END

IF ~~ THEN BEGIN s1
  SAY @15466
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s2
  SAY @15467
  IF ~~ THEN EXIT
END

IF ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s3
  SAY @15434
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",0)
HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s4
  SAY @15435
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Dead("Dynaheir")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("DynaheirDeath","GLOBAL",0)~ THEN BEGIN s5
  SAY @628
  IF ~~ THEN REPLY @8784 DO ~SetGlobal("DynaheirDeath","GLOBAL",1)
EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
JoinParty()~ SOLVED_JOURNAL @320539 EXIT
  IF ~~ THEN REPLY @8785 DO ~SetGlobal("DynaheirDeath","GLOBAL",1)
GiveGoldForce(500)
EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
SetGlobal("FindDynaheir","GLOBAL",2)~ SOLVED_JOURNAL @320539 GOTO s6
END

IF ~~ THEN BEGIN s6
  SAY @635
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

END
