BEGIN ~stoned~

IF WEIGHT #2 ~Global("DurStatue","GLOBAL",1)
Global("DurStatx","GLOBAL",0)~ THEN BEGIN 0
  SAY @23288
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("viking","GLOBAL",1)
Global("vikingx","GLOBAL",0)~ THEN BEGIN 1
  SAY @23292
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~Global("Durtomb","GLOBAL",1)
Global("Durtombx","GLOBAL",0)~ THEN BEGIN 2
  SAY @23322
  IF ~~ THEN EXIT
END
