BEGIN ~stonedl~

IF ~Global("DurStatue","GLOBAL",1)
Global("DurStatx","GLOBAL",0)~ THEN BEGIN 0
  SAY @23291
  IF ~~ THEN REPLY @23293 GOTO 2
  IF ~~ THEN REPLY @23294 GOTO 2
  IF ~~ THEN REPLY @23295 GOTO 1
  IF ~~ THEN REPLY @23296 GOTO 2
  IF ~~ THEN REPLY @23298 GOTO 2
  IF ~~ THEN REPLY @23299 GOTO 2
  IF ~~ THEN REPLY @23300 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @23301
  IF ~~ THEN DO ~Wait(3)
SetGlobal("DurStatx","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("ARD014","",[2404.1512],12))
ActionOverride(Player1,LeaveAreaLUA("ARD014","",[2404.1512],12))
ActionOverride(Player1,SetMasterArea("ARD000"))
ActionOverride(Player2,LeaveAreaLUA("ARD014","",[2457.1552],12))
ActionOverride(Player3,LeaveAreaLUA("ARD014","",[2502.1591],12))
ActionOverride(Player4,LeaveAreaLUA("ARD014","",[2558.1636],12))
ActionOverride(Player5,LeaveAreaLUA("ARD014","",[2607.1668],12))
ActionOverride(Player6,LeaveAreaLUA("ARD014","",[2665.1703],12))
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23302
  IF ~~ THEN DO ~ReallyForceSpell([PC],WIZARD_FIREBALL)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23303
  IF ~~ THEN EXIT
END

IF ~Global("viking","GLOBAL",1)
Global("vikingx","GLOBAL",0)~ THEN BEGIN 4
  SAY @23311
  IF ~~ THEN REPLY @23312 GOTO 6
  IF ~~ THEN REPLY @23313 GOTO 5
  IF ~~ THEN REPLY @23314 GOTO 5
  IF ~~ THEN REPLY @23315 GOTO 5
  IF ~~ THEN REPLY @23316 GOTO 5
  IF ~~ THEN REPLY @23317 GOTO 5
  IF ~~ THEN REPLY @23320 GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY @23318
  IF ~~ THEN DO ~ReallyForceSpell([PC],WIZARD_LIGHTNING_BOLT)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @23319
  IF ~~ THEN DO ~Wait(3)
SetGlobal("vikingx","GLOBAL",2)
ActionOverride(Player1,LeaveAreaLUAPanic("ARD014","",[2404.1512],12))
ActionOverride(Player1,LeaveAreaLUA("ARD014","",[2404.1512],12))
ActionOverride(Player1,SetMasterArea("ARD000"))
ActionOverride(Player2,LeaveAreaLUA("ARD014","",[2457.1552],12))
ActionOverride(Player3,LeaveAreaLUA("ARD014","",[2502.1591],12))
ActionOverride(Player4,LeaveAreaLUA("ARD014","",[2558.1636],12))
ActionOverride(Player5,LeaveAreaLUA("ARD014","",[2607.1668],12))
ActionOverride(Player6,LeaveAreaLUA("ARD014","",[2665.1703],12))
~ EXIT
END

IF ~Global("Durtomb","GLOBAL",1)
Global("Durtombx","GLOBAL",0)~ THEN BEGIN 7
  SAY @23324
  IF ~~ THEN REPLY @23327 GOTO 8
  IF ~~ THEN REPLY @23328 GOTO 8
  IF ~~ THEN REPLY @23329 GOTO 9
  IF ~~ THEN REPLY @23334 GOTO 8
  IF ~~ THEN REPLY @23335 GOTO 8
  IF ~~ THEN REPLY @23336 GOTO 8
  IF ~~ THEN REPLY @22976 GOTO 3
END

IF ~~ THEN BEGIN 8
  SAY @23330
  IF ~~ THEN DO ~ReallyForceSpell([PC],WIZARD_CLOUDKILL)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @23331
  IF ~~ THEN DO ~Wait(3)
SetGlobal("Durtombx","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("ARD014","",[2404.1512],12))
ActionOverride(Player1,LeaveAreaLUA("ARD014","",[2404.1512],12))
ActionOverride(Player1,SetMasterArea("ARD000"))
ActionOverride(Player2,LeaveAreaLUA("ARD014","",[2457.1552],12))
ActionOverride(Player3,LeaveAreaLUA("ARD014","",[2502.1591],12))
ActionOverride(Player4,LeaveAreaLUA("ARD014","",[2558.1636],12))
ActionOverride(Player5,LeaveAreaLUA("ARD014","",[2607.1668],12))
ActionOverride(Player6,LeaveAreaLUA("ARD014","",[2665.1703],12))
~ EXIT
END
