BEGIN ~elkart~

IF WEIGHT #1 ~InParty("Skie")
InParty("Eldoth")
!GlobalTimerNotExpired("Ransom","GLOBAL")~ THEN BEGIN 0
  SAY @17325
  IF ~~ THEN DO ~GiveGoldForce(1000)
IncrementGlobal("RansomTaken","GLOBAL",1)
SetGlobalTimer("Ransom","GLOBAL",TWO_DAYS)~ EXIT
END

IF WEIGHT #3 ~True()~ THEN BEGIN 1
  SAY @17326
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("RansomTaken","GLOBAL",8)~ THEN BEGIN 2
  SAY @17327
  IF ~~ THEN DO ~CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
CreateCreature("FLAME",[0.0],0)
EraseJournalEntry(@310595)
EscapeArea()~ SOLVED_JOURNAL @310596 EXIT
END

IF WEIGHT #2 ~GlobalGT("RansomTaken","GLOBAL",0)~ THEN BEGIN 3
  SAY @17546
  IF ~~ THEN EXIT
END
