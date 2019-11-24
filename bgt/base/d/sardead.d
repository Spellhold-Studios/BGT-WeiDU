BEGIN ~sardead~

IF ~True()~ THEN BEGIN 0
  SAY @202200
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @202201
  IF ~~ THEN DO ~SetGlobal("SarevokBoutToDie","GLOBAL",2)~ EXIT
END
