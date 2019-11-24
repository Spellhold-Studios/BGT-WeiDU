BEGIN ~hairto~

IF ~~ THEN BEGIN 0
  SAY @688
  IF ~PartyGoldGT(199)~ THEN REPLY @6979 DO ~TakePartyGold(200)~ GOTO 2
  IF ~~ THEN REPLY @6980 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @689
  IF ~~ THEN EXTERN ~GNARL~ 1
END

IF ~~ THEN BEGIN 2
  SAY @690
  IF ~~ THEN EXTERN ~GNARL~ 2
END

IF ~~ THEN BEGIN 3
  SAY @691
  IF ~~ THEN DO ~ActionOverride("Gnarl",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @692
  IF ~~ THEN DO ~ActionOverride("Gnarl",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @693
  IF ~~ THEN DO ~ActionOverride("Gnarl",Enemy())
Enemy()~ EXIT
END

IF ~True()~ THEN BEGIN 6
  SAY @6988
  IF ~~ THEN DO ~Enemy()~ EXIT
END
