BEGIN ~mulahe~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @770
  IF ~~ THEN REPLY @5803 JOURNAL @310350 GOTO 1
  IF ~~ THEN REPLY @5804 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @771
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @772
  IF ~~ THEN DO ~Enemy()
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("SKELET",[222.502],5)
CreateCreature("SKELET",[222.502],5)
CreateCreature("SKELET",[222.502],5)
CreateCreature("SKELET",[222.502],5)
MoveToPoint([359.664])
Help()~ EXIT
END

IF WEIGHT #3 ~HPPercentLT(Myself,50)~ THEN BEGIN 3
  SAY @773
  IF ~~ THEN REPLY @5805 GOTO 5
  IF ~~ THEN REPLY @5806 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @774
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @775
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @776
  IF ~~ THEN DO ~Enemy()
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("KOBOLD",[217.591],4)
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("KOBOLD",[217.591],5)
CreateCreature("SKELET",[222.502],5)
CreateCreature("SKELET",[222.502],5)
CreateCreature("SKELET",[222.502],5)
CreateCreature("SKELET",[222.502],5)
MoveToPoint([359.664])
Help()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 7
  SAY @6308
  IF ~~ THEN UNSOLVED_JOURNAL @310068 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9153
  IF ~~ THEN EXIT
END
