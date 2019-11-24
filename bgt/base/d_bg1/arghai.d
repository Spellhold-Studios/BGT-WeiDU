BEGIN ~arghai~

IF ~True()~ THEN BEGIN 0
  SAY @18301
  IF ~~ THEN REPLY @18305 GOTO 1
  IF ~~ THEN REPLY @18307 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18309
  IF ~~ THEN DO ~CreateCreature("OGREHA",[1351.1078],3)
CreateCreature("OGREHA",[1351.1078],3)
CreateCreature("OGREHA",[1351.1078],3)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18312
  IF ~~ THEN DO ~CreateCreature("OGREHA",[1351.1078],11)
CreateCreature("OGREHA",[1351.1078],11)
CreateCreature("OGREHA",[1351.1078],11)
Enemy()~ EXIT
END
