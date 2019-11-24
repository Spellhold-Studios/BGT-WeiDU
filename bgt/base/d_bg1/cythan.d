BEGIN ~cythan~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @20389
  IF ~~ THEN REPLY @20390 GOTO 1
  IF ~~ THEN REPLY @20391 GOTO 4
  IF ~~ THEN REPLY @20392 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @20393
  IF ~~ THEN REPLY @20394 GOTO 2
  IF ~~ THEN REPLY @20395 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @20397
  IF ~~ THEN DO ~CreateCreature("ARGHH",[835.718],1)
CreateCreature("UGHH",[795.654],1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @20398
  IF ~~ THEN DO ~CreateCreature("ARGHH",[835.718],1)
CreateCreature("UGHH",[795.654],1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @20399
  IF ~~ THEN DO ~CreateCreature("ARGHH",[835.718],1)
CreateCreature("UGHH",[795.654],1)
Enemy()~ EXIT
END

IF ~HPPercentLT(Myself,50)~ THEN BEGIN 5
  SAY @20400
  IF ~~ THEN REPLY @20401 UNSOLVED_JOURNAL @310339 GOTO 6
  IF ~~ THEN REPLY @20402 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @20403
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @20405
  IF ~~ THEN DO ~ActionOverride("ARGHH",DestroySelf())
ActionOverride("UGHH",DestroySelf())
GiveItem("SCRL2L",LastTalkedToBy)
GiveItem("SCRL2M",LastTalkedToBy)
GiveItem("SCRL3F",LastTalkedToBy)
EscapeArea()~ EXIT
END
