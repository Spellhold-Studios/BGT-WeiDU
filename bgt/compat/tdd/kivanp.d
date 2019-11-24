ADD_STATE_TRIGGER ~kivanp~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 1 4


APPEND ~kivanp~

IF ~False()~ THEN BEGIN s0
  SAY @15812
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #-2 ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s1
  SAY @15813
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1) LeaveParty()~ EXIT
END

IF WEIGHT #-1 ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN s2
  SAY @15844
  IF ~~ THEN REPLY @15845 GOTO s3
  IF ~~ THEN REPLY @15846 GOTO s4
END

IF ~~ THEN BEGIN s3
  SAY @15847
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s4
  SAY @15848
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF WEIGHT #-4 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s5
  SAY @16634
  IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~HappinessLT(Myself,0) GlobalLT("ENDOFBG1","GLOBAL",2) Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s6 SAY @16635
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1) LeaveParty() Enemy()~ EXIT
END

END
