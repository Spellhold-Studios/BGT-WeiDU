BEGIN ~dynap~

IF ~!InParty("Minsc")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)
HappinessLT(Myself,0)~ THEN BEGIN s0
  SAY @16113
  IF ~~ THEN DO ~LeaveParty() 
EscapeAreaDestroy(90)~ EXIT
END

IF ~InParty("Minsc")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)
HappinessLT(Myself,0)~ THEN BEGIN s1
  SAY @16114
  IF ~~ THEN DO ~LeaveParty() 
EscapeAreaDestroy(90)
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",EscapeAreaDestroy(90))~ EXIT
END

IF ~!InParty("Minsc")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s2
  SAY @16115
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()~ EXIT
END

IF ~InParty("Minsc")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s3
  SAY @16116
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()
ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
ActionOverride("Minsc",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialogue("MinscP"))~ EXIT
END

IF ~!Dead("Minsc")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN s4
  SAY @16117
  IF ~~ THEN REPLY @16122 GOTO s6
  IF ~~ THEN REPLY @16124 GOTO s7
END

IF ~Dead("Minsc")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN s5
  SAY @16118
  IF ~~ THEN REPLY @16123 GOTO s6
  IF ~~ THEN REPLY @16125 GOTO s8
END

IF ~~ THEN BEGIN s6
  SAY @16119
  IF ~~ THEN DO ~ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
ActionOverride("Minsc",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialogue("MinscP"))~ EXIT
END

IF ~~ THEN BEGIN s7
  SAY @16120
  IF ~~ THEN DO ~ActionOverride("Minsc",SetGlobal("IWasKickedOut","LOCALS",0))
ActionOverride("Minsc",JoinParty())
SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s8
  SAY @16121
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END
