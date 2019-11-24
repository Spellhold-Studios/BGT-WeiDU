BEGIN ~garan~

IF ~True()~ THEN BEGIN 0
  SAY @23634
  IF ~~ THEN REPLY @23639 GOTO 1
  IF ~~ THEN REPLY @23642 GOTO 2
  IF ~~ THEN REPLY @23646 GOTO 3
  IF ~~ THEN REPLY @23648 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @23651
  IF ~~ THEN REPLY @23652 GOTO 2
  IF ~~ THEN REPLY @23653 GOTO 3
  IF ~~ THEN REPLY @23654 GOTO 4
  IF ~~ THEN REPLY @23655 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @23658
  IF ~~ THEN DO ~Enemy()
CreateCreature("ankheg",[912.1057],0)
CreateCreature("ankheg",[822.1029],0)
CreateCreature("ankheg",[1198.1011],0)
CreateCreature("ankheg",[1220.1172],0)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23660
  IF ~~ THEN DO ~Enemy()
CreateCreature("ankheg",[912.1057],0)
CreateCreature("ankheg",[822.1029],0)
CreateCreature("ankheg",[1198.1011],0)
CreateCreature("ankheg",[1220.1172],0)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @23661
  IF ~~ THEN DO ~Enemy()
CreateCreature("ankheg",[912.1057],0)
CreateCreature("ankheg",[822.1029],0)
CreateCreature("ankheg",[1198.1011],0)
CreateCreature("ankheg",[1220.1172],0)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @23663
  IF ~~ THEN DO ~Enemy()
CreateCreature("ankheg",[912.1057],0)
CreateCreature("ankheg",[822.1029],0)
CreateCreature("ankheg",[1198.1011],0)
CreateCreature("ankheg",[1220.1172],0)
~ EXIT
END
