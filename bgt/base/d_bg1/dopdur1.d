BEGIN ~dopdur1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @20808
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetDialog("")
Face(10)
Wait(3)
ForceSpellPoint([1029.897],QUICK_TELEPORT)
Face(12)
Wait(2)
DialogInterrupt(TRUE)
StartDialog("dopdur1",Player1)
~ EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @20809
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
SetDialog("")
SetGlobal("dopdur1","GLOBAL",1)
Wait(3)
ForceSpellPoint([1145.850],QUICK_TELEPORT)
Face(10)
Wait(2)
DialogInterrupt(TRUE)
StartDialog("dopdur1",Player1)
~ EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @20810
  IF ~~ THEN DO ~ReallyForceSpell(Myself,WIZARD_STINKING_CLOUD)
ReallyForceSpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT)
ChangeAIScript("MoveP1",Override)
~ EXIT
END
