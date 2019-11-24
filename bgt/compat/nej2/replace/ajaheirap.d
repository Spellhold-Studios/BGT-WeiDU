ADD_STATE_TRIGGER ~jaheirap~ 8 ~Global("ENDOFBG1","GLOBAL",2)~ 9 13 16 17 21 23 27 32 34 38 42 49 66 72 73

APPEND ~jaheirap~

IF WEIGHT #-4 ~!InParty("Khalid")
Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s0
  SAY @16097
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1) LeaveParty()~ EXIT
END

IF WEIGHT #-3 ~InParty("Khalid")
Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s1
  SAY @16098
  IF ~~ THEN DO ~ActionOverride("Khalid",ChangeAIScript("",DEFAULT))
ActionOverride("Khalid",LeaveParty())
ActionOverride("Khalid",SetDialogue("KhaliP"))
ActionOverride("Khalid",SetGlobal("IWasKickedOut","LOCALS",1))
SetGlobal("IWasKickedOut","LOCALS",1)
LeaveParty()
ActionOverride("Khalid",EscapeAreaMove("AR6801",328,656,14))
EscapeAreaMove("AR6801",315,711,13)~ EXIT
END

IF WEIGHT #-5 ~HappinessLT(Myself,0)
!InParty("Khalid")
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s2
  SAY @16099
  IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF WEIGHT #-6 ~HappinessLT(Myself,0)
InParty("Khalid")
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s3
  SAY @16100
  IF ~~ THEN DO ~ActionOverride("Khalid",ChangeAIScript("",DEFAULT))
ActionOverride("Khalid",LeaveParty())
ActionOverride("Khalid",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #-2 ~!Dead("Khalid")
Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s4
  SAY @16101
  IF ~~ THEN REPLY @16106 GOTO s8
  IF ~~ THEN REPLY @16108 GOTO s6
END

IF WEIGHT #-1 ~Dead("Khalid")
Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s5
  SAY @16102
  IF ~~ THEN REPLY @16107 GOTO s7
  IF ~~ THEN REPLY @16109 GOTO s6
END

IF ~~ THEN BEGIN s6
  SAY @16103
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s7
  SAY @16104
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s8
  SAY @16105
  IF ~~ THEN DO ~ActionOverride("Khalid",SetGlobal("IWasKickedOut","LOCALS",0))
ActionOverride("Khalid",JoinParty())
SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

END
