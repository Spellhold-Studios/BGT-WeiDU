BEGIN ~farm3~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3315
  IF ~~ THEN DO ~SetGlobalTimer("Farmer","GLOBAL",20)~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @6142
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~GlobalTimerExpired("Farmer","GLOBAL")~ THEN BEGIN 2
  SAY @6893
  IF ~~ THEN DO ~SetGlobalTimer("Farmer2","GLOBAL",40)~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Farmer2","GLOBAL")~ THEN BEGIN 3
  SAY @6894
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8985
  IF ~~ THEN EXIT
END
