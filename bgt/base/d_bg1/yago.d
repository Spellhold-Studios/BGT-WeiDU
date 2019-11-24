BEGIN ~yago~

IF WEIGHT #2 ~!Allegiance(Myself,ENEMY)
OR(2)
NumberOfTimesTalkedTo(0)
Global("BrielbaraMove","GLOBAL",1)~ THEN BEGIN 0
  SAY @1562
  IF ~Global("BrielbaraMove","GLOBAL",1)~ THEN REPLY @1568 GOTO 1
  IF ~~ THEN REPLY @1569 GOTO 2
  IF ~~ THEN REPLY @1570 GOTO 3
  IF ~~ THEN REPLY @11266 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1563
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1564
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1565
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #3 ~HPLT(Myself,11)
Allegiance(Myself,ENEMY)~ THEN BEGIN 4
  SAY @1566
  IF ~~ THEN REPLY @1571 DO ~SetGlobal("YagoFight","GLOBAL",1)~ EXIT
  IF ~Global("BrielbaraMove","GLOBAL",1)~ THEN REPLY @1572 GOTO 5
  IF ~~ THEN REPLY @11267 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1567
  IF ~~ THEN DO ~ActionOverride(Player1,SmallWait(1))
ActionOverride(Player2,smallwait(1))
ActionOverride(Player3,smallwait(1))
ActionOverride(Player4,smallwait(1))
ActionOverride(Player5,smallwait(1))
ActionOverride(Player6,smallwait(1))
GiveItem("BOOK70",LastTalkedToBy)
ChangeEnemyAlly(Myself,NEUTRAL)
EscapeArea()
~ EXIT
END

IF WEIGHT #4 ~True()~ THEN BEGIN 6
  SAY @6441
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 7
  SAY @6442
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9035
  IF ~~ THEN EXIT
END
