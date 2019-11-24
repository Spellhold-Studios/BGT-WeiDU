BEGIN ~garric~

IF ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!Dead("Silke")~ THEN BEGIN 0
  SAY @547
  IF ~~ THEN REPLY @559 GOTO 3
  IF ~~ THEN REPLY @560 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @550
  IF ~~ THEN REPLY @561 GOTO 3
  IF ~~ THEN REPLY @562 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @551
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Garrcut")~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @552
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("TalkedToGarrick","GLOBAL",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("SilkeFightOver","GLOBAL",0)~ THEN BEGIN 4
  SAY @554
  IF ~~ THEN EXTERN ~SILKE~ 11
END

IF ~~ THEN BEGIN 5
  SAY @555
  IF ~~ THEN EXTERN ~CUTSILK~ 5
END

IF ~Global("TalkedToGarrick","GLOBAL",2)
GlobalLT("ENDOFBG1","GLOBAL",2)
!Dead("Silke")
Global("SilkeFightOver","GLOBAL",1)
Global("AttackedMerchant","GLOBAL",0)~ THEN BEGIN 6
  SAY @556
  IF ~~ THEN REPLY @565 GOTO 3
  IF ~~ THEN REPLY @566 DO ~JoinParty()~ EXIT
END

IF ~Global("TalkedToGarrick","GLOBAL",2)
GlobalLT("ENDOFBG1","GLOBAL",2)
Dead("Silke")
Global("SilkeFightOver","GLOBAL",1)
Global("AttackedMerchant","GLOBAL",0)~ THEN BEGIN 7
  SAY @557
  IF ~~ THEN REPLY @567 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @568 GOTO 3
END

IF ~~ THEN BEGIN 8
  SAY @558
  IF ~~ THEN EXTERN ~SILKE~ 3
END

IF ~~ THEN BEGIN 9
  SAY @785
  IF ~~ THEN DO ~SetGlobal("SilkePayment","GLOBAL",300)~ EXTERN ~SILKE~ 4
END

IF ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 10
  SAY @6941
  IF ~~ THEN JOURNAL @310787 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @581
  IF ~~ THEN EXIT
END

IF ~Global("TalkedToGarrick","GLOBAL",2)
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("SilkeFightOver","GLOBAL",1)
Global("AttackedMerchant","GLOBAL",1)~ THEN BEGIN 12
  SAY @14735
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 13
  SAY @14736
  IF ~~ THEN DO ~SetDialog("Garrip")
LeaveParty()~ EXIT
END