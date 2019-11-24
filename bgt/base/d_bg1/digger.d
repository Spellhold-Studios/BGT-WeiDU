BEGIN ~digger~

IF WEIGHT #2 ~NumTimesTalkedTo(0)
Global("DiggersPossessed","GLOBAL",0)~ THEN BEGIN 0
  SAY @8627
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(1)
Global("DiggersPossessed","GLOBAL",0)~ THEN BEGIN 1
  SAY @8628
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~NumTimesTalkedTo(2)
Global("DiggersPossessed","GLOBAL",0)~ THEN BEGIN 2
  SAY @8629
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~NumTimesTalkedTo(3)
Global("DiggersPossessed","GLOBAL",0)~ THEN BEGIN 3
  SAY @8630
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~NumTimesTalkedTo(4)
Global("DiggersPossessed","GLOBAL",0)~ THEN BEGIN 4
  SAY @8631
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8632
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8633
  IF ~~ THEN EXTERN ~CUTCHAR~ 0
END

IF ~~ THEN BEGIN 7
  SAY @8634
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @8635
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @8636
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @8637
  IF ~~ THEN DO ~ActionOverride("Charleston",SetDialog("charle"))
EndCutsceneMode()
SetGlobal("DiggersPossessed","GLOBAL",1)~ EXIT
END

IF WEIGHT #7 ~RandomNum(1,1)
Global("DiggersPossessed","GLOBAL",1)~ THEN BEGIN 11
  SAY @8638
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~RandomNum(2,1)
Global("DiggersPossessed","GLOBAL",1)~ THEN BEGIN 12
  SAY @8639
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
Global("DiggersPossessed","GLOBAL",0)~ THEN BEGIN 13
  SAY @8974
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @8975
  IF ~~ THEN EXIT
END
