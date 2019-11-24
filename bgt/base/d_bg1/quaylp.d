BEGIN ~quaylp~

IF ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)
HappinessLT(Myself,0)~ THEN BEGIN 0
  SAY @15850
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 1
  SAY @15849
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 2
  SAY @15851
  IF ~~ THEN REPLY @15852 GOTO 3
  IF ~~ THEN REPLY @15853 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @15854
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @15855
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
  JoinParty()~ EXIT
END
