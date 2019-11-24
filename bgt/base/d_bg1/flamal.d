BEGIN ~flamal~

IF ~NumTimesTalkedTo(0)
Global("Captured","GLOBAL",0)~ THEN BEGIN 0
  SAY @2133
  IF ~~ THEN EXTERN ~ALDETH~ 23
END

IF ~~ THEN BEGIN 1
  SAY @2134
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("Captured","GLOBAL",1)
StartCutScene("Capcut01")~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6938
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9017
  IF ~~ THEN EXIT
END
