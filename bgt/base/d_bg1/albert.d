BEGIN ~albert~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6150
  IF ~~ THEN DO ~CreateCreature("RUFIE",[3803.695],0)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @6475
  IF ~~ THEN REPLY @6476 GOTO 4
  IF ~~ THEN REPLY @6477 GOTO 2
  IF ~~ THEN REPLY @6478 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @6479
  IF ~~ THEN REPLY @6480 GOTO 4
  IF ~~ THEN REPLY @6481 GOTO 5
  IF ~~ THEN REPLY @6482 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6483
  IF ~~ THEN REPLY @6494 GOTO 4
  IF ~~ THEN REPLY @6495 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @6497
  IF ~~ THEN UNSOLVED_JOURNAL @310151 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @6498
  IF ~~ THEN DO ~GiveItemCreate("MISC63",LastTalkedToBy,0,0,0)
SetGlobal("Rufie","GLOBAL",1)~ UNSOLVED_JOURNAL @310152 EXIT
END

IF ~Global("Rufie","GLOBAL",1)~ THEN BEGIN 6
  SAY @6499
  IF ~~ THEN EXIT
END

IF ~Global("Rufie","GLOBAL",2)
!Dead("Rufie")~ THEN BEGIN 7
  SAY @6500
  IF ~~ THEN DO ~EraseJournalEntry(@310151)
EraseJournalEntry(@310152)
TakePartyItem("MISC63")
GiveItemCreate("MISC86",LastTalkedToBy,0,0,0)
SetGlobal("Rufie","GLOBAL",3)
AddexperienceParty(1000)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Rufcut01")~ SOLVED_JOURNAL @310153 EXIT
END

IF ~Dead("Rufie")~ THEN BEGIN 8
  SAY @6502
  IF ~~ THEN DO ~TakePartyItem("MISC63")
SetGlobal("Rufie","GLOBAL",3)
AddexperienceParty(1200)
EraseJournalEntry(@310151)
EraseJournalEntry(@310152)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Rufcut02")~ SOLVED_JOURNAL @310154 EXIT
END

IF ~Global("Rufie","GLOBAL",0)~ THEN BEGIN 9
  SAY @6503
  IF ~~ THEN REPLY @6504 GOTO 4
  IF ~~ THEN REPLY @6505 GOTO 2
  IF ~~ THEN REPLY @6506 GOTO 5
END

IF ~Global("Rufie","GLOBAL",3)~ THEN BEGIN 10
  SAY @16479
  IF ~~ THEN DO ~ForceSpellPoint([4732.3747],WIZARD_DIMENSION_DOOR)
Wait(1)
SetInterrupt(TRUE)
DestroySelf()
~ EXIT
END
