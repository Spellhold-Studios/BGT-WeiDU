ADD_STATE_TRIGGER ~yeslip~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 1 3


APPEND ~yeslip~

IF WEIGHT #-2 ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN s0
  SAY @15458
  IF ~~ THEN REPLY @15459 GOTO s1
  IF ~~ THEN REPLY @15460 GOTO s2
END

IF ~~ THEN BEGIN s1
  SAY @15461
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
  JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s2
  SAY @15462
  IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s3
  SAY @15427
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
LeaveParty()~ EXIT
END

IF WEIGHT #-4 ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)
HappinessLT(Myself,0)~ THEN BEGIN s4
  SAY @15428
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~GlobalLT("ENDOFBG1","GLOBAL",2)
StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN s5
  SAY @16694
  IF ~~ THEN EXIT
END


END
