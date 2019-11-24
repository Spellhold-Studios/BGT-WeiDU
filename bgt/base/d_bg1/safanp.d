BEGIN ~safanp~

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @15871
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 1
  SAY @15870
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 2
  SAY @15872
  IF ~~ THEN REPLY @15875 GOTO 4
  IF ~~ THEN REPLY @15876 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @15877
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @15878
  IF ~~ THEN EXIT
END
