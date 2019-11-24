BEGIN ~tiaxp~

IF ~HappinessLT(Myself,0)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @15900
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 1
  SAY @15899
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 2
  SAY @15901
  IF ~~ THEN REPLY @15902 GOTO 4
  IF ~~ THEN REPLY @15903 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @15904
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
  JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @15905
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @16654
  IF ~~ THEN EXIT
END
