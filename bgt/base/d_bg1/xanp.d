BEGIN ~xanp~

IF ~Global("IWasKickedOut","LOCALS",0)
HappinessLT(Myself,0)~ THEN BEGIN 1
  SAY @15907
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @15906
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",1)~ THEN BEGIN 2
  SAY @15908
  IF ~~ THEN REPLY @15911 GOTO 3
  IF ~~ THEN REPLY @15912 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @15913
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
  JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @15914
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 5 
  SAY @16678
  IF ~~ THEN EXIT
END
