BEGIN ~montap~

IF ~!InParty("Xzar")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s0
  SAY @16063
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()~ EXIT
END

IF ~InParty("Xzar")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s1
  SAY @16064
  IF ~~ THEN DO ~ActionOverride("Xzar",ChangeAIScript("",DEFAULT))
ActionOverride("Xzar",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Xzar",LeaveParty())
ActionOverride("Xzar",SetDialog("XzarP"))
SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()~ EXIT
END

IF WEIGHT #-1 ~HappinessLT(Myself,0)
!InParty("Xzar")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s2
  SAY @16065
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~HappinessLT(Myself,0)
InParty("Xzar")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s3
  SAY @16066
  IF ~~ THEN DO ~ActionOverride("Xzar",ChangeAIScript("",DEFAULT))
ActionOverride("Xzar",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Xzar",LeaveParty())
ActionOverride("Xzar",EscapeArea())
SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
Dead("XZAR")~ THEN BEGIN s4
  SAY @16067
  IF ~~ THEN REPLY @16072 GOTO s6
  IF ~~ THEN REPLY @16074 GOTO s7
END

IF ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
!Dead("XZAR")~ THEN BEGIN s5
  SAY @16068
  IF ~~ THEN REPLY @16073 GOTO s8
  IF ~~ THEN REPLY @16075 GOTO s7
END

IF ~~ THEN BEGIN s6
  SAY @16069
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s7
  SAY @16070
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s8
  SAY @16071
  IF ~~ THEN DO ~ActionOverride("Xzar",SetGlobal("IWasKickedOut","LOCALS",0))
ActionOverride("Xzar",JoinParty())
SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

