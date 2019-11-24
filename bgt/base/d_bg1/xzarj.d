BEGIN ~xzarj~

IF ~GlobalTimerExpired("Xzar","GLOBAL")
Global("VisitNashkell","GLOBAL",1)
Global("Chapter","GLOBAL",2)~ THEN BEGIN 0
  SAY @16703
  IF ~~ THEN DO ~SetGlobal("VisitNashkell","GLOBAL",2)
SetGlobalTimer("Xzar","GLOBAL",SIX_DAYS)~ EXIT
END

IF ~GlobalTimerExpired("Xzar","GLOBAL")
Global("VisitNashkell","GLOBAL",2)
Global("Chapter","GLOBAL",2)~ THEN BEGIN 1
  SAY @16704
  IF ~~ THEN DO ~SetGlobal("VisitNashkell","GLOBAL",3)
SetGlobalTimer("Xzar","GLOBAL",SEVEN_DAYS)~ EXIT
END

IF ~GlobalTimerExpired("Xzar","GLOBAL")
Global("VisitNashkell","GLOBAL",3)
Global("Chapter","GLOBAL",2)
!Dead("Montaron")~ THEN BEGIN 2
  SAY @16705
  IF ~~ THEN DO ~SetGlobal("VisitNashkell","GLOBAL",4)
LeaveParty()
EscapeArea()~ EXTERN ~MONTAJ~ 2
END

IF WEIGHT #5 ~False()
!InParty("Montaron")~ THEN BEGIN 3
  SAY @16706
  IF ~~ THEN DO ~LeaveParty()
SetDialog("XzarP")~ EXIT
END

IF WEIGHT #6 ~False()
InParty("Montaron")~ THEN BEGIN 4
  SAY @16708
  IF ~~ THEN DO ~ActionOverride("Montaron",ChangeAIScript("",DEFAULT))
ActionOverride("Montaron",LeaveParty())
ActionOverride("Montaron",SetDialog("MontaP"))
LeaveParty()
SetDialog("XzarP")~ EXIT
END

IF ~HappinessLT(Myself,0)
!InParty("Montaron")~ THEN BEGIN 5
  SAY @16709
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~HappinessLT(Myself,0)
InParty("Montaron")~ THEN BEGIN 6
  SAY @16710
  IF ~~ THEN DO ~ActionOverride("Montaron",ChangeAIScript("",DEFAULT))
ActionOverride("Montaron",LeaveParty())
ActionOverride("Montaron",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 7
  SAY @16711
  IF ~~ THEN DO ~~ EXIT
END

IF ~GlobalTimerExpired("Xzar","GLOBAL")
Global("VisitNashkell","GLOBAL",3)
Global("Chapter","GLOBAL",2)
Dead("Montaron")~ THEN BEGIN 8
  SAY @16705
  IF ~~ THEN DO ~SetGlobal("VisitNashkell","GLOBAL",4)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 9
  SAY @6435
  IF ~~ THEN EXIT
END