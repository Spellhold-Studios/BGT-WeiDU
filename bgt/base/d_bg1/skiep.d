BEGIN ~skiep~

IF WEIGHT #0 ~InParty("Eldoth")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @16148
  IF ~~ THEN DO ~ActionOverride("Eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("Eldoth",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Eldoth",LeaveParty())
ActionOverride("Eldoth",SetDialog("EldotP"))
SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #1 ~!InParty("Eldoth")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 1
  SAY @16147
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #2 ~HappinessLT(Myself,0)
InParty("Eldoth")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 2
  SAY @16150
  IF ~~ THEN DO ~ActionOverride("Eldoth",LeaveParty())
ActionOverride("Eldoth",EscapeAreaDestroy(90))
EscapeArea()~ EXIT
END

IF WEIGHT #3 ~HappinessLT(Myself,0)
!InParty("Eldoth")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 3
  SAY @16149
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #5 ~!Dead("Eldoth")
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 4
  SAY @16151
  IF ~~ THEN REPLY @16156 GOTO 6
  IF ~~ THEN REPLY @16158 GOTO 7
END

IF WEIGHT #6 ~Dead("Eldoth")
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 5
  SAY @16152
  IF ~~ THEN REPLY @16157 GOTO 6
  IF ~~ THEN REPLY @16159 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @16153
  IF ~~ THEN DO ~ActionOverride("Eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("Eldoth",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Eldoth",LeaveParty())
ActionOverride("Eldoth",SetDialog("EldotP"))
SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16154
  IF ~~ THEN DO ~ActionOverride("Eldoth",SetGlobal("IWasKickedOut","LOCALS",0))
ActionOverride("Eldoth",JoinParty())
SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @16155
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
  JoinParty()~ EXIT
END

IF WEIGHT #4 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 9
  SAY @16766
  IF ~~ THEN EXIT
END
