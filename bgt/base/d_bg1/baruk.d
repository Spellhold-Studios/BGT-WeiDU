BEGIN ~baruk~

IF ~True()~ THEN BEGIN 0
  SAY @18239
  IF ~~ THEN REPLY @18240 GOTO 1
  IF ~~ THEN REPLY @18241 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18242
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[766.988],5)
CreateCreature("KOBCOMM",[776.998],5)
CreateCreature("KOBCOMM",[756.978],5)
CreateCreature("KOBCOMM",[746.988],5)
CreateCreature("KOBCOMM",[736.988],5)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18245
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[766.988],5)
CreateCreature("KOBCOMM",[776.998],5)
CreateCreature("KOBCOMM",[756.978],5)
CreateCreature("KOBCOMM",[746.988],5)
CreateCreature("KOBCOMM",[736.988],5)
Enemy()~ EXIT
END
