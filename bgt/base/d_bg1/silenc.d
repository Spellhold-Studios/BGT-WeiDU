BEGIN ~silenc~

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @3056
  IF ~~ THEN DO ~StartStore("stosilen",LastTalkedToBy())~ EXIT
END

IF WEIGHT #4 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN BEGIN 1
  SAY @3057
  IF ~~ THEN REPLY @6380 GOTO 4
  IF ~~ THEN REPLY @6381 DO ~TakePartyGold(5)
StartStore("stosilen",LastTalkedToBy())~ EXIT
END

IF WEIGHT #5 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @3058
  IF ~~ THEN DO ~Wait(1)
Shout(1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3059
  IF ~~ THEN REPLY @6382 GOTO 4
  IF ~~ THEN REPLY @6383 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @3060
  IF ~~ THEN DO ~SetGlobal("NoPayment","GLOBAL",1)
Wait(10)
CreateCreature("GUARD",[687.381],0)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @3061
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~Global("Chapter","GLOBAL",8)
Global("SeenSanctuary","GLOBAL",0)~ THEN BEGIN 6
  SAY @3062
  IF ~~ THEN DO ~StartStore("stosilen",LastTalkedToBy())~ JOURNAL @310799 EXIT
END

IF WEIGHT #7 ~Global("Chapter","GLOBAL",8)
Global("SeenSanctuary","GLOBAL",1)~ THEN BEGIN 7
  SAY @3063
  IF ~~ THEN DO ~StartStore("stosilen",LastTalkedToBy())~ EXIT
END

IF WEIGHT #8 ~True()~ THEN BEGIN 8
  SAY @3064
  IF ~~ THEN DO ~StartStore("stosilen",LastTalkedToBy())~ EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 9
  SAY @6384
  IF ~~ THEN DO ~StartStore("stosilen",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @9092
  IF ~~ THEN EXIT
END
