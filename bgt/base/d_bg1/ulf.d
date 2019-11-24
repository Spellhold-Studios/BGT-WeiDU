BEGIN ~ulf~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22059
  IF ~~ THEN REPLY @22070 GOTO 1
  IF ~ReactionGT(LastTalkedToBy,9)~ THEN REPLY @22071 GOTO 4
  IF ~ReactionLT(LastTalkedToBy,10)~ THEN REPLY @22073 GOTO 5
  IF ~~ THEN REPLY @22074 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @22060
  IF ~~ THEN DO ~Shout(99)
Enemy()
ActionOverride("leaggu1",Enemy())
ActionOverride("leaggu1",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu2",Enemy())
ActionOverride("leaggu2",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu3",Enemy())
ActionOverride("leaggu3",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu4",Enemy())
ActionOverride("leaggu4",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu5",Enemy())
ActionOverride("leaggu5",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu6",Enemy())
ActionOverride("leaggu6",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu7",Enemy())
ActionOverride("leaggu7",AttackReevaluate(LastTalkedToBy("ulf"),8)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @22061
  IF ~~ THEN DO ~Shout(99)
Enemy()
ActionOverride("leaggu1",Enemy())
ActionOverride("leaggu1",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu2",Enemy())
ActionOverride("leaggu2",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu3",Enemy())
ActionOverride("leaggu3",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu4",Enemy())
ActionOverride("leaggu4",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu5",Enemy())
ActionOverride("leaggu5",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu6",Enemy())
ActionOverride("leaggu6",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu7",Enemy())
ActionOverride("leaggu7",AttackReevaluate(LastTalkedToBy("ulf"),8)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @22062
  IF ~~ THEN DO ~Shout(99)
Enemy()
ActionOverride("leaggu1",Enemy())
ActionOverride("leaggu1",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu2",Enemy())
ActionOverride("leaggu2",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu3",Enemy())
ActionOverride("leaggu3",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu4",Enemy())
ActionOverride("leaggu4",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu5",Enemy())
ActionOverride("leaggu5",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu6",Enemy())
ActionOverride("leaggu6",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu7",Enemy())
ActionOverride("leaggu7",AttackReevaluate(LastTalkedToBy("ulf"),8)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @22063
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @22066
  IF ~~ THEN DO ~Shout(99)
Enemy()
ActionOverride("leaggu1",Enemy())
ActionOverride("leaggu1",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu2",Enemy())
ActionOverride("leaggu2",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu3",Enemy())
ActionOverride("leaggu3",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu4",Enemy())
ActionOverride("leaggu4",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu5",Enemy())
ActionOverride("leaggu5",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu6",Enemy())
ActionOverride("leaggu6",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu7",Enemy())
ActionOverride("leaggu7",AttackReevaluate(LastTalkedToBy("ulf"),8)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @22067
  IF ~~ THEN REPLY @22075 GOTO 7
  IF ~~ THEN REPLY @22076 GOTO 4
  IF ~~ THEN REPLY @22077 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @22068
  IF ~~ THEN DO ~Shout(99)
Enemy()
ActionOverride("leaggu1",Enemy())
ActionOverride("leaggu1",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu2",Enemy())
ActionOverride("leaggu2",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu3",Enemy())
ActionOverride("leaggu3",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu4",Enemy())
ActionOverride("leaggu4",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu5",Enemy())
ActionOverride("leaggu5",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu6",Enemy())
ActionOverride("leaggu6",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu7",Enemy())
ActionOverride("leaggu7",AttackReevaluate(LastTalkedToBy("ulf"),8)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22069
  IF ~~ THEN DO ~Shout(99)
Enemy()
ActionOverride("leaggu1",Enemy())
ActionOverride("leaggu1",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu2",Enemy())
ActionOverride("leaggu2",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu3",Enemy())
ActionOverride("leaggu3",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu4",Enemy())
ActionOverride("leaggu4",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu5",Enemy())
ActionOverride("leaggu5",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu6",Enemy())
ActionOverride("leaggu6",AttackReevaluate(LastTalkedToBy("ulf"),8)
ActionOverride("leaggu7",Enemy())
ActionOverride("leaggu7",AttackReevaluate(LastTalkedToBy("ulf"),8)~ EXIT
END

IF ~True()~ THEN BEGIN 9
  SAY @22078
  IF ~~ THEN EXIT
END
