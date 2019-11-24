BEGIN ~shandal~

IF ~NumTimesTalkedTo(0)
ReputationLT(LastTalkedToBy,4)
RandomNum(4,1)~ THEN BEGIN 0
  SAY @22755
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~NumTimesTalkedTo(0)
ReputationLT(LastTalkedToBy,4)
RandomNum(4,2)~ THEN BEGIN 1
  SAY @22757
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~NumTimesTalkedTo(0)
ReputationLT(LastTalkedToBy,4)
RandomNum(4,3)~ THEN BEGIN 2
  SAY @22758
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~NumTimesTalkedTo(0)
ReputationLT(LastTalkedToBy,4)
RandomNum(4,4)~ THEN BEGIN 3
  SAY @22759
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~HPPercentLT(MostDamagedOf,25)
RandomNum(4,1)~ THEN BEGIN 4
  SAY @22760
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~HPPercentLT(MostDamagedOf,25)
RandomNum(4,2)~ THEN BEGIN 5
  SAY @22761
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~HPPercentLT(MostDamagedOf,25)
RandomNum(4,3)~ THEN BEGIN 6
  SAY @22762
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~HPPercentLT(MostDamagedOf,25)
RandomNum(4,4)~ THEN BEGIN 7
  SAY @22763
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
