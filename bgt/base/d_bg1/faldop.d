BEGIN ~faldop~

IF WEIGHT #3 ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 0
  SAY @15468
  IF ~~ THEN REPLY @15469 GOTO 1
  IF ~~ THEN REPLY @15470 DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @15471
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @15514
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
  JoinParty()~ EXIT
END

IF WEIGHT #0 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 3
  SAY @15430
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #1 ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 4
  SAY @15436
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #2 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 5
  SAY @16691
  IF ~~ THEN EXIT
END
