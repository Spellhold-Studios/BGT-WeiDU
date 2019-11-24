BEGIN ~fear~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22365
  IF ~~ THEN UNSOLVED_JOURNAL @310633 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @22366
  IF ~~ THEN DO ~SetGlobal("Fear","GLOBAL",1)~ EXIT
END

IF ~Global("Fear","GLOBAL",1)
Global("Awake","GLOBAL",0)~ THEN BEGIN 2
  SAY @22367
  IF ~~ THEN GOTO 0
END

IF ~Global("Fear","GLOBAL",1)
Global("Awake","GLOBAL",1)~ THEN BEGIN 3
  SAY @22368
  IF ~~ THEN DO ~SetGlobal("Fear","GLOBAL",2)
AddexperienceParty(2000)
DestroySelf()~ EXIT
END
