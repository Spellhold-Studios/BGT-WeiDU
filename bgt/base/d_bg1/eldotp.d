BEGIN ~eldotp~

IF WEIGHT #0 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Skie")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @16164
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #1 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Skie")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 1
  SAY @16165
  IF ~~ THEN DO ~ActionOverride("Skie",LeaveParty())
ActionOverride("Skie",EscapeArea())
EscapeArea()~ EXIT
END

IF WEIGHT #2 ~!InParty("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 2
  SAY @16166
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #3 ~InParty("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 3
  SAY @16167
  IF ~~ THEN DO ~ActionOverride("Skie",ChangeAIScript("",DEFAULT))
ActionOverride("Skie",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Skie",LeaveParty())
ActionOverride("Skie",SetDialog("SkieP"))
SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #5 ~!Dead("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 4
  SAY @16168
  IF ~~ THEN REPLY @16173 GOTO 6
  IF ~~ THEN REPLY @16175 GOTO 8
END

IF WEIGHT #6 ~Dead("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 5
  SAY @16169
  IF ~~ THEN REPLY @16174 GOTO 7
  IF ~~ THEN REPLY @16176 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @16170
  IF ~~ THEN DO ~ActionOverride("Skie",SetGlobal("IWasKickedOut","LOCALS",0))
ActionOverride("Skie",JoinParty())
SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16171
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
  JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @16172
  IF ~~ THEN DO ~ActionOverride("Skie",ChangeAIScript("",DEFAULT))
ActionOverride("Skie",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Skie",LeaveParty())
ActionOverride("Skie",SetDialog("SkieP"))
SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #4 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 9
  SAY @16762
  IF ~~ THEN EXIT
END
