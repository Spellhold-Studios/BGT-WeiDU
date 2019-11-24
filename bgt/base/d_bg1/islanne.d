BEGIN ~islanne~

IF WEIGHT #1 ~True()~ THEN BEGIN 0
  SAY @24079
  IF ~~ THEN REPLY @24085 GOTO 1
  IF ~~ THEN REPLY @24087 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @24080
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUAPanic("ARD000","",[2622.2289],12))
ActionOverride(Player1,LeaveAreaLUA("ARD000","",[2622.2289],12))
ActionOverride(Player1,SetMasterArea("ARD000"))
ActionOverride(Player2,LeaveAreaLUA("ARD000","",[2688.2355],12))
ActionOverride(Player3,LeaveAreaLUA("ARD000","",[2694.2302],12))
ActionOverride(Player4,LeaveAreaLUA("ARD000","",[2625.2347],12))
ActionOverride(Player5,LeaveAreaLUA("ARD000","",[2612.2407],12))
ActionOverride(Player6,LeaveAreaLUA("ARD000","",[2677.2427],12))
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @24081
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Dead("DeathK")~ THEN BEGIN 3
  SAY @24082
  IF ~~ THEN REPLY @24086 GOTO 1
  IF ~~ THEN REPLY @24088 GOTO 2
END
