BEGIN ~mtbe9~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8147
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8148
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @8149
  IF ~~ THEN DO ~CreateCreature("MERC",[339.330],0)
CreateCreature("MERC",[431.310],0)
CreateCreature("MERC",[372.348],0)
CreateCreature("MERC",[391.365],0)
CreateCreature("MERC",[427.348],0)
CreateCreature("MERC",[457.334],0)
~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @8150
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9048
  IF ~~ THEN EXIT
END
