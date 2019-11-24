BEGIN ~tremai~

IF ~NumTimesTalkedTo(0)
Global("HelpVarci","GLOBAL",1)
!Dead("Varci")~ THEN BEGIN 0
  SAY @12645
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @12646
  IF ~~ THEN EXTERN ~VARCI~ 7
END

IF ~~ THEN BEGIN 2
  SAY @12647
  IF ~~ THEN EXTERN ~VARCI~ 8
END

IF ~~ THEN BEGIN 3
  SAY @12648
  IF ~~ THEN REPLY @12662 GOTO 4
  IF ~~ THEN REPLY @12663 GOTO 5
  IF ~~ THEN REPLY @12664 GOTO 8
  IF ~~ THEN REPLY @12665 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @12649
  IF ~~ THEN REPLY @12666 GOTO 7
  IF ~~ THEN REPLY @12667 GOTO 5
  IF ~~ THEN REPLY @12668 GOTO 8
  IF ~~ THEN REPLY @12669 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @12650
  IF ~~ THEN REPLY @12670 GOTO 6
  IF ~~ THEN REPLY @12671 GOTO 4
  IF ~~ THEN REPLY @12672 GOTO 8
  IF ~~ THEN REPLY @12673 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @12651
  IF ~~ THEN DO ~SetGlobal("TremainMove","GLOBAL",2)
ActionOverride(Player1,LeaveAreaLUAPanic("AR7600","",[924.715],14))
ActionOverride(Player1,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player2,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player3,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player4,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player5,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player6,LeaveAreaLUA("AR7600","",[924.715],14))~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @12652
  IF ~~ THEN DO ~SetGlobal("TremainMove","GLOBAL",2)
ActionOverride(Player1,LeaveAreaLUAPanic("AR7600","",[924.715],14))
ActionOverride(Player1,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player2,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player3,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player4,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player5,LeaveAreaLUA("AR7600","",[924.715],14))
ActionOverride(Player6,LeaveAreaLUA("AR7600","",[924.715],14))~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @12653
  IF ~~ THEN DO ~SetGlobal("HelpTremain","GLOBAL",1)~ UNSOLVED_JOURNAL @310228 EXIT
END

IF ~!PartyHasItem("MISC54")
Global("TremainMove","GLOBAL",0)
!Dead("Varci")~ THEN BEGIN 9
  SAY @12654
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @12655
  IF ~~ THEN EXTERN ~VARCI~ 10
END

IF ~PartyHasItem("MISC54")
Global("TremainMove","GLOBAL",0)~ THEN BEGIN 11
  SAY @12656
  IF ~~ THEN DO ~TakePartyItem("MISC54")
DestroyItem("MISC54")
MoveToPoint([420.320])
SetGlobal("TremainMove","GLOBAL",1)~ EXIT
END

IF ~Global("TremainMove","GLOBAL",1)~ THEN BEGIN 12
  SAY @12657
  IF ~~ THEN DO ~SetGlobal("TremainMove","GLOBAL",2)
CreateCreature("CASSON",[413.334],3)
ActionOverride("Casson",Dialogue([PC]))~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @12658
  IF ~~ THEN EXTERN ~CASSON~ 1
END

IF ~~ THEN BEGIN 14
  SAY @12659
  IF ~~ THEN EXTERN ~CASSON~ 2
END

IF ~~ THEN BEGIN 15
  SAY @12660
  IF ~~ THEN EXTERN ~CASSON~ 3
END

IF ~~ THEN BEGIN 16
  SAY @12661
  IF ~~ THEN EXTERN ~CASSON~ 4
END
