BEGIN ~gnoll5~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5110
  IF ~~ THEN REPLY @5111 GOTO 2
  IF ~~ THEN REPLY @5112 DO ~TakePartyGold(50)~ EXIT
  IF ~~ THEN REPLY @5113 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5114
  IF ~~ THEN DO ~SetGlobal("GnollFightOver","GLOBAL",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5115
  IF ~~ THEN REPLY @5116 GOTO 1
  IF ~~ THEN REPLY @5117 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5118
  IF ~~ THEN DO ~SetGlobal("GnollFightStarted","GLOBAL",1)~ EXIT
END

IF ~HPLT(StrongestOf,10)
Global("GnollFightOver","GLOBAL",0)
Global("GnollFightStarted","GLOBAL",1)~ THEN BEGIN 4
  SAY @6947
  IF ~~ THEN DO ~SetGlobal("GnollFightOver","GLOBAL",1)
Enemy()~ EXIT
END

IF ~HPLT(Myself,10)
Global("GnollFightOver","GLOBAL",0)
Global("GnollFightStarted","GLOBAL",1)~ THEN BEGIN 5
  SAY @6948
  IF ~~ THEN DO ~AddexperienceParty(500)
SetGlobal("GnollFightOver","GLOBAL",2)
EscapeAreaDestroy(90)~ EXIT
END
