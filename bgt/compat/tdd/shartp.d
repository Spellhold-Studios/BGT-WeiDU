ADD_STATE_TRIGGER ~shartp~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 1 5


APPEND ~shartp~

IF WEIGHT #-3 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s0
  SAY @15857
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #-2 ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s1
  SAY @15856
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()~ EXIT
END

IF WEIGHT #-1 ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s2
  SAY @15858
  IF ~~ THEN REPLY @15859 GOTO s4
  IF ~~ THEN REPLY @15860 GOTO s3
END

IF ~~ THEN BEGIN s3
  SAY @15861
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
  JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s4
  SAY @15862
  IF ~~ THEN EXIT
END


END
