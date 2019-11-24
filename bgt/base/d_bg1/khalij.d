BEGIN ~khalij~

IF WEIGHT #4 ~False()
!InParty("Jaheira")~ THEN BEGIN 0
  SAY @16683
  IF ~~ THEN DO ~LeaveParty()
SetDialog("KhaliP")~ EXIT
END

IF WEIGHT #5 ~False()
InParty("Jaheira")~ THEN BEGIN 1
  SAY @16684
  IF ~~ THEN DO ~ActionOverride("Jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",SetDialog("JaheiraP"))
LeaveParty()
SetDialog("KhaliP")~ EXIT
END

IF WEIGHT #2 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Jaheira")~ THEN BEGIN 2
  SAY @16685
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #3 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Jaheira")~ THEN BEGIN 3
  SAY @16686
  IF ~~ THEN DO ~ActionOverride("Jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #0 ~GlobalTimerExpired("Khalid","GLOBAL")
Global("OffToNashkell","GLOBAL",0)
Global("Chapter","GLOBAL",2)~ THEN BEGIN 4
  SAY @17214
  IF ~~ THEN DO ~SetGlobalTimer("Khalid","GLOBAL",EIGHT_DAYS)
SetGlobal("OffToNashkell","GLOBAL",1)~ EXIT
END

IF WEIGHT #1 ~GlobalTimerExpired("Khalid","GLOBAL")
Global("OffToNashkell","GLOBAL",1)
Global("Chapter","GLOBAL",2)~ THEN BEGIN 5
  SAY @17215
  IF ~~ THEN DO ~SetGlobal("OffToNashkell","GLOBAL",2)~ EXIT
END
