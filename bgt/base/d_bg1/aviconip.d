ADD_STATE_TRIGGER ~viconip~ 1 ~Global("ENDOFBG1","GLOBAL",2)~ 2 4 6


APPEND ~viconip~

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s0
  SAY @15863
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)
HappinessLT(Myself,0)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s1
  SAY @15864
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN s2
  SAY @15865
  IF ~~ THEN REPLY @15866 GOTO s4
  IF ~~ THEN REPLY @15867 GOTO s3
END

IF ~~ THEN BEGIN s3
  SAY @15868
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s4
  SAY @15869
  IF ~~ THEN EXIT
END

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)
StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN s5
  SAY @16644
  IF ~~ THEN EXIT
END

END
