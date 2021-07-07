BEGIN ~shoal~

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 0
  SAY @1974
  IF ~~ THEN REPLY @1978 GOTO 2
  IF ~~ THEN REPLY @1979 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1975
  IF ~~ THEN REPLY @1980 DO ~PlaySound("NERED07")
Kill(LastTalkedToBy)
SetGlobal("ShoalKiss","GLOBAL",1)
Enemy()~ EXIT
  IF ~~ THEN REPLY @1981 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @1976
  IF ~~ THEN REPLY @1982 DO ~PlaySound("NERED07")
Kill(LastTalkedToBy)
SetGlobal("ShoalKiss","GLOBAL",1)
Enemy()~ EXIT
  IF ~~ THEN REPLY @1983 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @1977
  IF ~~ THEN DO ~PlaySound("NERED07")
Kill(LastTalkedToBy)
SetGlobal("ShoalKiss","GLOBAL",1)
Enemy()~ EXIT
END

IF ~Global("ShoalHit","GLOBAL",1)
Global("LastBug","GLOBAL",0)~ THEN BEGIN 4
  SAY @1986
  IF ~Global("ShoalKiss","GLOBAL",1)~ THEN REPLY @1987 DO ~SetGlobal("ShoalHit","GLOBAL",2)
SetGlobal("LastBug","GLOBAL",1)~ GOTO 5
  IF ~Global("ShoalKiss","GLOBAL",0)~ THEN REPLY @1988 DO ~SetGlobal("ShoalHit","GLOBAL",2)
SetGlobal("LastBug","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @1989 DO ~SetGlobal("ShoalHit","GLOBAL",2)
SetGlobal("LastBug","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1990
  IF ~~ THEN REPLY @1991 GOTO 6
  IF ~~ THEN REPLY @1992 GOTO 7
  IF ~~ THEN REPLY @1993 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1994
  IF ~~ THEN DO ~ClearAllActions()
ChangeEnemyAlly(Myself,NEUTRAL)
ForceSpell(Myself,SHOAL_REVIVE)
CreateCreature("DROTH",[2500.500],6)
ActionOverride("Droth",MoveToPoint([2900.525]))~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1995
  IF ~~ THEN DO ~ClearAllActions()
ChangeEnemyAlly(Myself,NEUTRAL)
CreateCreature("DROTH",[2500.500],6)
ActionOverride("Droth",MoveToPoint([2900.525]))~ EXIT
END

IF ~Global("ShoalLeaving","GLOBAL",0) 
Dead("Droth")~ THEN BEGIN 8
  SAY @1996
  IF ~~ THEN DO ~SetGlobal("ShoalLeaving","GLOBAL",1)
AddexperienceParty(750)
EscapeArea()~ EXIT
END

IF ~Global("ShoalLeaving","GLOBAL",1)
Dead("Droth")~ THEN BEGIN 9
  SAY @1997
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1999
  IF ~~ THEN EXTERN ~DROTH~ 1
END

IF ~~ THEN BEGIN 11
  SAY @2000
  IF ~~ THEN REPLY @2008 EXTERN ~DROTH~ 2
  IF ~~ THEN REPLY @2009 EXTERN ~DROTH~ 3
  IF ~~ THEN REPLY @2010 EXTERN ~DROTH~ 4
END

IF ~~ THEN BEGIN 12
  SAY @20728
  IF ~~ THEN EXIT
END
