BEGIN ~ajantp~

IF ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 0
  SAY @15442
  IF ~~ THEN REPLY @15419 GOTO 2
  IF ~~ THEN REPLY @15420 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @15443
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @15444
  IF ~~ THEN EXIT
END

IF ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)
HappinessLT(Myself,0)~ THEN BEGIN 3
  SAY @15579
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)
EscapeArea()~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 4
  SAY @15580
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END
