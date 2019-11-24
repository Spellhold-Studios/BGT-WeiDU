BEGIN ~garrip~

IF WEIGHT #2 ~Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @15773
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #0 ~HappinessLT(Myself,0)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 2
  SAY @15774
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #1 ~Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 3
  SAY @15778
  IF ~~ THEN REPLY @15781 GOTO 4
  IF ~~ THEN REPLY @15782 GOTO 0
END

IF ~~ THEN BEGIN 4
  SAY @15796
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END
