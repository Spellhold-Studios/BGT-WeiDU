BEGIN ~khalip~

IF ~Dead("Jaheira")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @16080
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
EscapeAreaMove("AR6801",328,656,14)~ EXIT
END

IF ~!Dead("Jaheira")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 1
  SAY @16081
  IF ~~ THEN DO ~ActionOverride("Jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("Jaheira",SetGlobal("IWasKickedOut","LOCALS",1))
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",SetDialog("JaheiraP"))
SetGlobal("IWasKickedOut","LOCALS",1)
ActionOverride("Jaheira",EscapeAreaMove("AR6801",315,711,13))
EscapeAreaMove("AR6801",328,656,14)~ EXIT
END

IF ~False()~ THEN BEGIN 2
  SAY @16082
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 3
  SAY @16083
  IF ~~ THEN DO ~~ EXIT
END

IF ~Dead("Jaheira")
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 4
  SAY @16084
  IF ~~ THEN REPLY @16089 GOTO 6
  IF ~~ THEN REPLY @16091 GOTO 7
END

IF ~!Dead("Jaheira")
Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 5
  SAY @16085
  IF ~~ THEN REPLY @16090 GOTO 6
  IF ~~ THEN REPLY @16092 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @16086
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16087
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @16088
  IF ~~ THEN DO ~ActionOverride("Jaheira",SetGlobal("IWasKickedOut","LOCALS",0))
ActionOverride("Jaheira",JoinParty())
SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END
