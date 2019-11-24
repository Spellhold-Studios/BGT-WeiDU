BEGIN ~nobw8~

IF WEIGHT #4 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8421
  IF ~~ THEN DO ~SetGlobal("SpokeToAreana","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @8422
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @8423
  IF ~~ THEN REPLY @8446 GOTO 3
  IF ~~ THEN REPLY @8447 GOTO 4
  IF ~~ THEN REPLY @8448 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @8424
  IF ~~ THEN REPLY @8449 GOTO 5
  IF ~~ THEN REPLY @8450 GOTO 6
  IF ~~ THEN REPLY @8451 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @8425
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8426
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
EraseJournalEntry(@310265)
EraseJournalEntry(@310266)~ SOLVED_JOURNAL @310267 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8427
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",1)
SetGlobal("AreanaAmount","GLOBAL",500)~ UNSOLVED_JOURNAL @310265 EXIT
END

IF WEIGHT #5 ~Global("AcceptedJob","GLOBAL",1)~ THEN BEGIN 7
  SAY @8428
  IF ~Global("AreanaAmount","GLOBAL",500)
Dead("Cyrdemac")~ THEN REPLY @8452 GOTO 12
  IF ~GlobalGT("AreanaAmount","GLOBAL",500)
Dead("Cyrdemac")~ THEN REPLY @8453 GOTO 15
  IF ~!Dead("Cyrdemac")~ THEN REPLY @8454 GOTO 8
  IF ~~ THEN REPLY @8455 GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY @8429
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8430
  IF ~~ THEN REPLY @8456 DO ~SetGlobal("AreanaAmount","GLOBAL",2000)~ GOTO 11
  IF ~~ THEN REPLY @8457 GOTO 5
  IF ~~ THEN REPLY @8458 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @8431
  IF ~~ THEN REPLY @8459 DO ~SetGlobal("AreanaAmount","GLOBAL",4000)~ GOTO 11
  IF ~~ THEN REPLY @8460 GOTO 5
END

IF ~~ THEN BEGIN 11
  SAY @8432
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",1)~ UNSOLVED_JOURNAL @310265 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8433
  IF ~~ THEN REPLY @8461 GOTO 14
  IF ~~ THEN REPLY @8462 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @8434
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
GiveGoldForce(500)
EraseJournalEntry(@310265)
EraseJournalEntry(@310266)~ SOLVED_JOURNAL @310268 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @900001 //@8435
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
SetGlobal("BlackmailedNoblewoman","GLOBAL",1)
GiveGoldForce(500)
SetGlobalTimer("Blackmail","GLOBAL",TWO_DAYS)
SetGlobalTimer("Areana","GLOBAL",TEN_DAYS)~ UNSOLVED_JOURNAL @310269 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @8436
  IF ~~ THEN REPLY @8463 GOTO 13
  IF ~~ THEN REPLY @8464 GOTO 16
  IF ~~ THEN REPLY @8465 GOTO 14
END

IF ~~ THEN BEGIN 16
  SAY @8437
  IF ~~ THEN REPLY @8466 GOTO 13
  IF ~~ THEN REPLY @8467 GOTO 14
END

IF WEIGHT #6 ~!GlobalTimerExpired("Blackmail","GLOBAL")
Global("BlackmailedNoblewoman","GLOBAL",1)
GlobalLT("Shakedown","GLOBAL",7)~ THEN BEGIN 17
  SAY @8439
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~GlobalTimerExpired("Blackmail","GLOBAL")
Global("BlackmailedNoblewoman","GLOBAL",1)
GlobalLT("Shakedown","GLOBAL",7)~ THEN BEGIN 18
  SAY @8440
  IF ~~ THEN DO ~GiveGoldForce(500)
SetGlobalTimer("Blackmail","GLOBAL",TWO_DAYS)
IncrementGlobal("Shakedown","GLOBAL",1)
ReputationInc(-1)~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
Global("AcceptedJob","GLOBAL",1)
Global("AreanaAmount","GLOBAL",500)~ THEN BEGIN 19
  SAY @8468
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
GiveGoldForce(500)
GiveItem("MISC20",LastTalkedToBy)~ EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)
Global("AcceptedJob","GLOBAL",1)
!Global("AreanaAmount","GLOBAL",500)~ THEN BEGIN 20
  SAY @8469
  IF ~~ THEN DO ~SetGlobal("AcceptedJob","GLOBAL",2)
GiveGoldForce(500)
GiveItem("MISC20",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @9126
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~GlobalTimerExpired("Areana","GLOBAL")
!Exists("TorLobo")
!Dead("TorLobo")~ THEN BEGIN 22
  SAY @17322
  IF ~~ THEN DO ~CreateCreature("TORLOB",[349.474],0)
EraseJournalEntry(@310265)
EraseJournalEntry(@310266)
EraseJournalEntry(@310269)~ SOLVED_JOURNAL @310270 EXIT
END
