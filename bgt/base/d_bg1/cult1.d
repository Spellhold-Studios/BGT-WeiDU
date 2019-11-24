BEGIN ~cult1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21540
  IF ~~ THEN REPLY @21547 GOTO 1
  IF ~~ THEN REPLY @21549 GOTO 2
  IF ~~ THEN REPLY @21551 GOTO 3
  IF ~~ THEN REPLY @21580 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @21541
  IF ~~ THEN REPLY @21583 GOTO 5
  IF ~~ THEN REPLY @21584 GOTO 3
  IF ~~ THEN REPLY @21585 DO ~CreateCreature("CULTT2",[826.999],0)
CreateCreature("CULTT2",[826.999],0)
CreateCreature("CULTT2",[826.999],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT4",[1207.681],0)
CreateCreature("CULTT4",[1207.681],0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @21542
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21543
  IF ~~ THEN DO ~CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT4",[1444.409],0)
CreateCreature("CULTT4",[1444.409],0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21544
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21545
  IF ~~ THEN DO ~CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT4",[1444.409],0)
CreateCreature("CULTT4",[1444.409],0)
Enemy()~ EXIT
END

IF ~True()~ THEN BEGIN 6
  SAY @22012
  IF ~~ THEN DO ~CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1078.876],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT2",[1198.504],0)
CreateCreature("CULTT4",[1444.409],0)
CreateCreature("CULTT4",[1444.409],0)
Enemy()~ EXIT
END
