BEGIN ~nevill~

IF ~True()~ THEN BEGIN 0
  SAY @18256
  IF ~~ THEN REPLY @18258 GOTO 1
  IF ~~ THEN REPLY @18260 GOTO 2
  IF ~~ THEN REPLY @18261 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @18257
  IF ~~ THEN DO ~CreateCreature("HOBGOBA",[3621.706],0)
CreateCreature("HOBGOBA",[3631.716],0)
CreateCreature("HOBGOBA",[3611.696],0)
CreateCreature("HOBGOBA",[3641.706],0)
CreateCreature("HOBGOBA",[3651.706],0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18268
  IF ~~ THEN DO ~CreateCreature("HOBGOBA",[3621.706],0)
CreateCreature("HOBGOBA",[3631.716],0)
CreateCreature("HOBGOBA",[3611.696],0)
CreateCreature("HOBGOBA",[3641.706],0)
CreateCreature("HOBGOBA",[3651.706],0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18273
  IF ~~ THEN DO ~AddexperienceParty(100)
TakePartyGold(55)
EscapeArea()~ EXIT
END
