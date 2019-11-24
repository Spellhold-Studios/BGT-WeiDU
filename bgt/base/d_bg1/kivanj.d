BEGIN ~kivanj~

IF WEIGHT #2 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 0
  SAY @16635
  IF ~~ THEN DO ~LeaveParty()
Enemy()~ EXIT
END

IF WEIGHT #0 ~GlobalTimerExpired("Kivan","GLOBAL")
Global("FindBandits","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",5)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 1
  SAY @17225
  IF ~~ THEN DO ~SetGlobalTimer("Kivan","GLOBAL",FIFTEEN_DAYS)
SetGlobal("FindBandits","GLOBAL",1)~ EXIT
END

IF WEIGHT #1 ~GlobalTimerExpired("Kivan","GLOBAL")
Global("FindBandits","GLOBAL",1)
GlobalLT("Chapter","GLOBAL",5)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 2
  SAY @17226
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #3 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 3
  SAY @6281
  IF ~~ THEN EXIT
END


