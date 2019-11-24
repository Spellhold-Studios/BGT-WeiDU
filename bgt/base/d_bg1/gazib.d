BEGIN ~gazib~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @18659
  IF ~~ THEN DO ~CreateCreature("OOPAH",[1282.3222],1)~ EXIT
END

IF ~NumTimesTalkedTo(1)
Dead("Oopah")~ THEN BEGIN 1
  SAY @18669
  IF ~~ THEN DO ~CreateCreature("OOPAH",[1282.3222],1)~ EXIT
END

IF ~GlobalGT("SPRITE_IS_DEADOopah","GLOBAL",1)~ THEN BEGIN 2
  SAY @18672
  IF ~~ THEN DO ~CreateCreature("OOPAH2",[1282.3222],1)
EscapeArea()~ EXIT
END
