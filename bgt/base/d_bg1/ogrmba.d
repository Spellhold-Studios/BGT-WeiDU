BEGIN ~ogrmba~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1527
  IF ~~ THEN DO ~SetGlobal("Sewage","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1528
  IF ~~ THEN DO ~Enemy()~ EXIT
END
