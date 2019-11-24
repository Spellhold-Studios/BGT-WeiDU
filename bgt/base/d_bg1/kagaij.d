BEGIN ~kagaij~

IF WEIGHT #5 ~~ THEN BEGIN 0
  SAY @16782
  IF ~~ THEN REPLY @16783 DO ~EraseJournalEntry(@310052)~ SOLVED_JOURNAL @310053 GOTO 1
  IF ~~ THEN REPLY @16784 DO ~EraseJournalEntry(@310052)~ SOLVED_JOURNAL @310053 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @16785
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #3 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 2
  SAY @16787
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #4 ~False()~ THEN BEGIN 3 //placeholder to maintain structure of dialogue file
  SAY @16788
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #0 ~GlobalTimerExpired("Kagain","GLOBAL")
Global("KagainCaravan","GLOBAL",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 4
  SAY @17227
  IF ~~ THEN DO ~SetGlobalTimer("Kagain","GLOBAL",SEVEN_DAYS)
SetGlobal("KagainCaravan","GLOBAL",1)~ EXIT
END

IF WEIGHT #2 ~GlobalTimerExpired("Kagain","GLOBAL")
Global("KagainCaravan","GLOBAL",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 5
  SAY @17228
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #1 ~Global("KagainCaravan","GLOBAL",2)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 6
  SAY @20686
  IF ~~ THEN DO ~EraseJournalEntry(@310052)
SetGlobal("KagainCaravan","GLOBAL",3)~ EXIT
END
