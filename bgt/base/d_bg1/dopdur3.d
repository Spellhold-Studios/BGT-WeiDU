BEGIN ~dopdur3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @20814
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetDialog("")
Face(10)
CreateCreature("islann",[2045.953],0)
CreateCreature("fuerne",[1461.597],0)
SetGlobal("dopdur3","GLOBAL",1)
ActionOverride("FUERNEBOL",MoveToPoint([1638.749]))
ActionOverride("FUERNEBOL",ProtectPoint([1638.749],3))
ActionOverride("ISLANNE",MoveToPoint([1806.895]))
ActionOverride("ISLANNE",ProtectPoint([1806.895],3))
Wait(3)
ForceSpellPoint([1900.714],QUICK_TELEPORT)
Face(10)
Wait(2)
DialogInterrupt(TRUE)
StartDialog("dopdur3",Player1)
~ EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @20815
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetDialog("")
SetGlobal("dopdur3","GLOBAL",2)
Wait(3)
ForceSpellPoint([2082.580],QUICK_TELEPORT)
Face(10)
Wait(2)
DialogInterrupt(TRUE)
StartDialog("dopdur3",Player1)
~ EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @20816
  IF ~~ THEN DO ~ReallyForceSpell("ISLANNE",WIZARD_CLOUDKILL)
ReallyForceSpell("ISLANNE",DOPPLEGANGER_CHANGE_DEFAULT)
ReallyForceSpell("FUERNEBOL",WIZARD_STINKING_CLOUD)
ReallyForceSpell("FUERNEBOL",DOPPLEGANGER_CHANGE_DEFAULT)
ReallyForceSpell(Myself,WIZARD_STINKING_CLOUD)
ReallyForceSpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT)
~ EXIT
END
