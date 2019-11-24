BEGIN ~angelo~

IF WEIGHT #3 ~Global("KillPC","GLOBAL",0)~ THEN BEGIN 0
  SAY @2135
  IF ~OR(5)
InParty(Player6)
InParty(Player5)
InParty(Player4)
InParty(Player3)
InParty(Player2)~ THEN REPLY @2144 UNSOLVED_JOURNAL @310212 GOTO 1
  IF ~~ THEN REPLY @2145 UNSOLVED_JOURNAL @310212 GOTO 2
  IF ~~ THEN REPLY @2146 UNSOLVED_JOURNAL @310212 GOTO 3
  IF ~~ THEN REPLY @11281 GOTO 4
  IF ~!InParty(Player6)
!InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~ THEN REPLY @2144 UNSOLVED_JOURNAL @310212 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @2136
  IF ~InParty(Player2)~ THEN DO ~StartCutSceneMode()
Kill(Player2)
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT
IF ~InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
Kill(Player3)
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT
  IF ~InParty(Player4)
!InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
Kill(Player4)
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT
  IF ~InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
Kill(Player5)
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT
  IF ~InParty(Player6)
!InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
Kill(Player6)
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT
  IF ~!InParty(Player6)
!InParty(Player5)
!InParty(Player4)
!InParty(Player3)
!InParty(Player2)~
THEN DO ~StartCutSceneMode()
SetGlobal("KillPC","GLOBAL",7)
Dialogue([PC])~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2137
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @2138
  IF ~~ THEN DO ~MoveViewPoint([1329.374],0)
ActionOverride(Player1,JumpToPoint([1329.374]))
ActionOverride(Player2,JumpToPoint([1374.388]))
ActionOverride(Player3,JumpToPoint([1407.412]))
ActionOverride(Player4,JumpToPoint([1393.311]))
ActionOverride(Player5,JumpToPoint([1437.320]))
ActionOverride(Player6,JumpToPoint([1472.334]))
EscapeArea()~ EXIT
END

IF WEIGHT #0 ~Global("KillPC","GLOBAL",7)~ THEN BEGIN 4
  SAY @2139
  IF ~~ THEN DO ~MoveViewPoint([1329.374],0)
ActionOverride(Player1,JumpToPoint([1329.374]))
ActionOverride(Player2,JumpToPoint([1374.388]))
ActionOverride(Player3,JumpToPoint([1407.412]))
ActionOverride(Player4,JumpToPoint([1393.311]))
ActionOverride(Player5,JumpToPoint([1437.320]))
ActionOverride(Player6,JumpToPoint([1472.334]))
EscapeArea()~ UNSOLVED_JOURNAL @310794 EXIT
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ 0
END

IF ~~ THEN BEGIN 5
  SAY @2140
  IF ~~ THEN EXTERN ~SHARTJ~ 1
END

IF ~~ THEN BEGIN 6
  SAY @2141
  IF ~~ THEN DO ~MoveViewPoint([1329.374],0)
ActionOverride(Player1,JumpToPoint([1329.374]))
ActionOverride(Player2,JumpToPoint([1374.388]))
ActionOverride(Player3,JumpToPoint([1407.412]))
ActionOverride(Player4,JumpToPoint([1393.311]))
ActionOverride(Player5,JumpToPoint([1437.320]))
ActionOverride(Player6,JumpToPoint([1472.334]))
EscapeArea()~ EXIT
END

IF WEIGHT #1 ~InParty("Sharteel")
Global("KillPC","GLOBAL",0)
~ THEN BEGIN 7
  SAY @2142
  IF ~~ THEN DO ~StartCutScene("Capcut02")~ UNSOLVED_JOURNAL @310214 EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 8
  SAY @2143
  IF ~~ THEN EXIT
END
