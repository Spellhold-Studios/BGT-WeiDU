BEGIN ~montaj~

IF WEIGHT #4 ~False()
!InParty("Xzar")~ THEN BEGIN 0
  SAY @16699
  IF ~~ THEN DO ~LeaveParty()
SetDialog("MontaP")~ EXIT
END

IF WEIGHT #5 ~False()
InParty("Xzar")~ THEN BEGIN 1
  SAY @16700
  IF ~~ THEN DO ~ActionOverride("Xzar",ChangeAIScript("",DEFAULT))
ActionOverride("Xzar",LeaveParty())
ActionOverride("Xzar",SetDialog("XzarP"))
LeaveParty()
SetDialog("MontaP")~ EXIT
END

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Xzar")~ THEN BEGIN 2
  SAY @16701
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Xzar")~ THEN BEGIN 3
  SAY @16702
  IF ~~ THEN DO ~ActionOverride("Xzar",LeaveParty())
ActionOverride("Xzar",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @16712
  IF ~~ THEN DO ~ActionOverride("Xzar",LeaveParty())
ActionOverride("Xzar",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF ~GlobalTimerExpired("Montaron","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("FindNashkell","GLOBAL",0)
Global("Chapter","GLOBAL",2)~ THEN BEGIN 5
  SAY @17206
  IF ~~ THEN DO ~SetGlobalTimer("Montaron","GLOBAL",NINE_DAYS)
SetGlobal("FindNashkell","Global",1)~ EXIT
END

IF ~GlobalTimerExpired("Montaron","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("FindNashkell","GLOBAL",1)
Global("Chapter","GLOBAL",2)~ THEN BEGIN 6
  SAY @17207
  IF ~~ THEN DO ~ActionOverride("Xzar",LeaveParty())
ActionOverride("Xzar",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END



