BEGIN ~pride~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22361
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @22362
  IF ~~ THEN DO ~SetGlobal("Pride","GLOBAL",1)~ UNSOLVED_JOURNAL @310635 EXIT
END

IF ~Global("Pride","GLOBAL",1)
Global("Honor","GLOBAL",0)~ THEN BEGIN 2
  SAY @22363
  IF ~~ THEN GOTO 0
END

IF ~Global("Pride","GLOBAL",1)
Global("Honor","GLOBAL",1)~ THEN BEGIN 3
  SAY @22364
  IF ~~ THEN DO ~SetGlobal("Pride","GLOBAL",2)
AddexperienceParty(2000)
DestroySelf()~ EXIT
END
