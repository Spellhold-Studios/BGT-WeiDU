BEGIN ~dopdur2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @20811
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetDialog("")
Face(9)
Wait(3)
ForceSpellPoint([1630.1224],QUICK_TELEPORT)
Face(11)
Wait(2)
DialogInterrupt(TRUE)
StartDialog("dopdur2",Player1)
~ EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @20812
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetDialog("")
SetGlobal("dopdur2","GLOBAL",1)
Wait(3)
ForceSpellPoint([1793.1126],QUICK_TELEPORT)
Face(14)
Wait(2)
DialogInterrupt(TRUE)
StartDialog("dopdur2",Player1)
~ EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @20813
  IF ~~ THEN DO ~ReallyForceSpell(Myself,WIZARD_FIREBALL)
ReallyForceSpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT)
~ EXIT
END
