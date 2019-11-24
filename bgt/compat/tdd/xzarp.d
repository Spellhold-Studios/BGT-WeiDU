ADD_STATE_TRIGGER ~xzarp~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 1 4


APPEND ~xzarp~

IF ~!InParty("Montaron")
Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s0
  SAY @16046
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()~ EXIT
END

IF ~InParty("Montaron")
Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s1
  SAY @16047
  IF ~~ THEN DO ~ActionOverride("Montaron",ChangeAIScript("",DEFAULT))
ActionOverride("Montaron",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Montaron",LeaveParty())
ActionOverride("Montaron",SetDialog("MontaP"))
SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()~ EXIT
END

IF WEIGHT #-2 ~HappinessLT(Myself,0)
!InParty("Montaron")
Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s2
  SAY @16048
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~HappinessLT(Myself,0)
InParty("Montaron")
Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s3
  SAY @16049
  IF ~~ THEN DO ~ActionOverride("Montaron",ChangeAIScript("",DEFAULT))
ActionOverride("Montaron",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Montaron",LeaveParty())
ActionOverride("Montaron",EscapeArea())
SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
Dead("Montaron")~ THEN BEGIN s4
  SAY @16050
  IF ~~ THEN REPLY @16054 GOTO s7
  IF ~~ THEN REPLY @16057 GOTO s6
END

IF ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
!Dead("Montaron")~ THEN BEGIN s5
  SAY @16051
  IF ~~ THEN REPLY @16055 GOTO s8
  IF ~~ THEN REPLY @16058 GOTO s6
END

IF ~~ THEN BEGIN s6
  SAY @16052
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s7
  SAY @16053
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s8
  SAY @16056
  IF ~~ THEN DO ~ActionOverride("Montaron",SetGlobal("IWasKickedOut","LOCALS",0))
ActionOverride("Montaron",JoinParty())
SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~False()
StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN s9
  SAY @16707
  IF ~~ THEN DO ~~ EXIT
END

END
