BEGIN ~cult3~

IF ~True()~ THEN BEGIN 0
  SAY @21938
  IF ~~ THEN REPLY @21942 GOTO 1
  IF ~~ THEN REPLY @21943 GOTO 2
  IF ~~ THEN REPLY @21944 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @21939
  IF ~~ THEN REPLY @21945 GOTO 2
  IF ~~ THEN REPLY @21946 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @21940
  IF ~~ THEN DO ~TakePartyItem("DAGG10")
SetGlobal("Cult1","GLOBAL",1)
CreateCreature("CULTT1",[2716.877],0)
CreateCreature("CULTT2",[2707.1124],0)
CreateCreature("CULTT2",[2707.1124],0)
ActionOverride("CultWizard",MoveToPoint([2900.904]))
CreateCreature("CULTT3",[3045.773],0)
CreateCreature("CULTT3",[3054.1032],0)
CreateCreature("CULTT4",[2393.1044],0)
CreateCreature("CULTT4",[2406.848],0)
ActionOverride("CultArcher",MoveToPoint([2716.877]))
ForceSpell(Myself,DRYAD_TELEPORT)
~ UNSOLVED_JOURNAL @310603 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21941
  IF ~~ THEN DO ~TakePartyItem("DAGG10")
SetGlobal("Cult1","GLOBAL",1)
CreateCreature("CULTT1",[2716.877],0)
CreateCreature("CULTT2",[2707.1124],0)
CreateCreature("CULTT2",[2707.1124],0)
ActionOverride("Cult Wizard",MoveToPoint([2900.904]))
CreateCreature("CULTT3",[3045.773],0)
CreateCreature("CULTT3",[3054.1032],0)
CreateCreature("CULTT4",[2393.1044],0)
CreateCreature("CULTT4",[2406.848],0)
ActionOverride("CultArcher",MoveToPoint([2716.877]))
ForceSpell(Myself,DRYAD_TELEPORT)
~ UNSOLVED_JOURNAL @310604 EXIT
END
