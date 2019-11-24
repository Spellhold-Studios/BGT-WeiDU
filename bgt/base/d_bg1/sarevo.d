BEGIN ~sarevo~

IF ~~ THEN BEGIN 0
  SAY @1643
  IF ~~ THEN REPLY @1648 GOTO 1
  IF ~~ THEN REPLY @1649 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @1644
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1645
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @1646
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1647
  IF ~~ THEN UNSOLVED_JOURNAL @310140 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @2313
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @2314
  IF ~~ THEN EXTERN ~BELT~ 5
END

IF ~~ THEN BEGIN 7
  SAY @2315
  IF ~~ THEN DO ~SetGlobal("NobleDopple","GLOBAL",1)~ EXIT
END

IF ~Dead("Liia")
Dead("Belt")
Global("SarevokBehavior","GLOBAL",0)~ THEN BEGIN 8
  SAY @2316
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door7300",FALSE)
TriggerActivation("Door7209a",FALSE)
TriggerActivation("Door7209b",FALSE)
TriggerActivation("Door7211",FALSE)
SetGlobalTimer("EndGame","GLOBAL",1)
CreateCreature("ANGELO",[469.707],0)
ActionOverride("Angelo",Enemy())
Wait(1)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
CreateCreature("FLAME",[469.707],0)
Shout(2)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @203405
  IF ~~ THEN EXTERN ~LIIA~ 7
END

IF ~~ THEN BEGIN 10
  SAY @2318
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",4)
TriggerActivation("Door7300",FALSE)
TriggerActivation("Door7209a",FALSE)
TriggerActivation("Door7209b",FALSE)
TriggerActivation("Door7211",FALSE)
SetGlobalTimer("SarevokRun","GLOBAL",10)
Shout(2)
Enemy()~ EXIT
END

IF ~GlobalTimerExpired("SarevokRun","GLOBAL")
Global("SarevokBehavior","GLOBAL",4)~ THEN BEGIN 11
  SAY @2319
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @2320
  IF ~~ THEN EXIT
END

IF ~Global("SarevokBehavior","GLOBAL",2)~ THEN BEGIN 13
  SAY @9304
  IF ~~ THEN REPLY @9305 GOTO 14
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9306 GOTO 15
  IF ~~ THEN REPLY @9307 GOTO 17
  IF ~~ THEN REPLY @9308 GOTO 18
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @9325 GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @9309
  IF ~~ THEN REPLY @9311 GOTO 20
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9312 GOTO 15
  IF ~~ THEN REPLY @9313 GOTO 18
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @9316 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @9310
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door7223",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Tazok",Enemy())
ActionOverride("Semaj",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @9314
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door7223",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Tazok",Enemy())
ActionOverride("Semaj",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @9315
  IF ~~ THEN REPLY @9317 GOTO 19
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9318 GOTO 15
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @9319 GOTO 16
  IF ~~ THEN REPLY @9320 GOTO 21
END

IF ~~ THEN BEGIN 18
  SAY @9321
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door7223",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Tazok",Enemy())
ActionOverride("Semaj",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @9322
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door7223",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Tazok",Enemy())
ActionOverride("Semaj",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @9323
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door7223",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Tazok",Enemy())
ActionOverride("Semaj",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @9324
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",3)
TriggerActivation("Door7223",FALSE)
ActionOverride("Galdor",Enemy())
ActionOverride("Tazok",Enemy())
ActionOverride("Semaj",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @2920
  IF ~~ THEN EXTERN ~GORION~ 4
END

IF ~~ THEN BEGIN 23
  SAY @2984
  IF ~~ THEN EXTERN ~GORION~ 5
END

IF ~~ THEN BEGIN 24
  SAY @203405
  IF ~~ THEN EXTERN ~BELT~ 10
END

IF ~~ THEN BEGIN 25
  SAY @11814
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",10)
Wait(1)
ActionOverride("Belt",ForceSpell(Player1,SAREVOK_STRIKE))
ActionOverride("Liia",ForceSpell(Player1,SAREVOK_STRIKE))
Wait(2)
Kill(Player1)~ EXIT
END
