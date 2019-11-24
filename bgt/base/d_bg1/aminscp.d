ADD_STATE_TRIGGER ~minscp~ 1 ~Global("ENDOFBG1","GLOBAL",2)~ 6 8 9 


APPEND ~minscp~

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Dynaheir")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s0
  SAY @16718
  IF ~~ THEN DO ~LeaveParty()
Enemy()~ EXIT
END

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Dynaheir")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s1
  SAY @16719
  IF ~~ THEN DO ~ActionOverride("Dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",EscapeArea())
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~!InParty("Dynaheir")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s2
  SAY @16132
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~InParty("Dynaheir")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s3
  SAY @16133
  IF ~~ THEN DO ~ActionOverride("Dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("Dynaheir",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",SetDialog("DynaP"))
SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)
!Dead("Dynaheir")
Global("HelpMinsc","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN s4
  SAY @16134
  IF ~~ THEN REPLY @16140 GOTO s6
  IF ~~ THEN REPLY @16141 GOTO s7
END

IF ~GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)
OR(2)
   Dead("Dynaheir")
   !Global("HelpMinsc","GLOBAL",2)~ THEN BEGIN s5
  SAY @16135
  IF ~~ THEN REPLY @16139 GOTO s6
  IF ~~ THEN REPLY @16142 GOTO s8
END

IF ~~ THEN BEGIN s6
  SAY @16136
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s7
  SAY @16137
  IF ~~ THEN DO ~ActionOverride("Dynaheir",SetGlobal("IWasKickedOut","LOCALS",0))
  ActionOverride("Dynaheir",JoinParty())
SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s8
  SAY @16138
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
  JoinParty()~ EXIT
END

END
