BEGIN ~beltbrd~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @201818
  IF ~~ THEN REPLY @201819 DO ~~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @201820
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @201810
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @201812
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @201813
  IF ~~ THEN REPLY @201814 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @201815
  IF ~~ THEN REPLY @201816 GOTO 6
  IF ~~ THEN REPLY @201817 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @201821
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @201822
  IF ~~ THEN REPLY @201823 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @201824
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @201826
  IF ~~ THEN REPLY @201827 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @201828
  IF ~~ THEN GOTO 11
END

IF ~True()~ THEN BEGIN 11
  SAY @201829
  IF ~~ THEN REPLY @201830 GOTO 12
  IF ~~ THEN REPLY @201831 GOTO 13
  IF ~~ THEN REPLY @201832 GOTO 5
END

IF ~~ THEN BEGIN 12
  SAY @201833
  IF ~~ THEN DO ~TakePartyItemAll("SCRL2J")
TakePartyItemAll("SCRL2K")
TakePartyItemAll("SCRL2L")
TakePartyItemAll("SCRL2M")
TakePartyItemAll("SCRL2N")
TakePartyItemAll("SCRL2O")
TakePartyItemAll("SCRL2P")
TakePartyItemAll("SCRL2Q")
TakePartyItemAll("SCRL2R")
TakePartyItemAll("SCRL2S")
TakePartyItemAll("SCRL2T")
TakePartyItemAll("SCRL2U")
TakePartyItemAll("SCRL2V")
TakePartyItemAll("SCRL2W")
TakePartyItemAll("SCRL2X")
TakePartyItemAll("SCRL2Y")
TakePartyItemAll("SCRL2Z")
TakePartyItemAll("SCRL3A")
TakePartyItemAll("SCRL3B")
TakePartyItemAll("SCRL3C")
TakePartyItemAll("SCRL3E")
TakePartyItemAll("SCRL3F")
TakePartyItemAll("SCRL3Z")
TakePartyItemAll("SCRLZHA")
TakePartyItemAll("MISC78")
ActionOverride(Player1,LeaveAreaLUAPanic("ARAM00","",[10.960],0))
ActionOverride(Player1,LeaveAreaLUA("ARAM00","",[10.960],0))
ActionOverride(Player2,LeaveAreaLUA("ARAM00","",[10.960],0))
ActionOverride(Player3,LeaveAreaLUA("ARAM00","",[10.960],0))
ActionOverride(Player4,LeaveAreaLUA("ARAM00","",[10.960],0))
ActionOverride(Player5,LeaveAreaLUA("ARAM00","",[10.960],0))
ActionOverride(Player6,LeaveAreaLUA("ARAM00","",[10.960],0))~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @201834
  IF ~~ THEN EXIT
END