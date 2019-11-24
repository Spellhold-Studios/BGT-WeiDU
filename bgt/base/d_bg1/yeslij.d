BEGIN ~yeslij~

IF WEIGHT #2 ~HappinessLT(Myself,0)~ THEN BEGIN 0
  SAY @16695
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 1
  SAY @16696
  IF ~~ THEN DO ~LeaveParty()
SetDialog("YesliP")~ EXIT
END

IF WEIGHT #0 ~GlobalTimerExpired("Yeslick","GLOBAL")
Global("MineFlood","GLOBAL",0)~ THEN BEGIN 2
  SAY @17208
  IF ~~ THEN DO ~SetGlobalTimer("Yeslick","GLOBAL",FIVE_DAYS)
SetGlobal("MineFlood","GLOBAL",1)~ EXIT
END

IF WEIGHT #1 ~GlobalTimerExpired("Yeslick","GLOBAL")
Global("MineFlood","GLOBAL",1)~ THEN BEGIN 3
  SAY @17210
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END
