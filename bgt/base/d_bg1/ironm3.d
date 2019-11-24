BEGIN ~ironm3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7658
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @7659
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @7660
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
Global("A6Charmed","LOCALS",0)~ THEN BEGIN 3
  SAY @7661
  IF ~~ THEN DO ~SetGlobal("A6Charmed","LOCALS",1)
GiveGoldForce(25)~ EXIT
END

IF ~False()~ THEN BEGIN 4
  SAY @9209
  IF ~~ THEN EXIT
END
