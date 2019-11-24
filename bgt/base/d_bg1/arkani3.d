BEGIN ~arkani3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @10794
  IF ~ReputationGT(LastTalkedToBy,7)~ THEN REPLY @10795 GOTO 1
  IF ~ReputationGT(LastTalkedToBy,7)~ THEN REPLY @10796 GOTO 2
  IF ~ReputationLT(LastTalkedToBy,8)~ THEN REPLY @10797 GOTO 3
  IF ~ReputationLT(LastTalkedToBy,8)~ THEN REPLY @10802 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @10798
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10799
  IF ~~ THEN DO ~ActionOverride("DEDER",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10800
  IF ~~ THEN DO ~ActionOverride("DEDER",Enemy())
Enemy()~ EXIT
END
