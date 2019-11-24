BEGIN ~bently~

IF WEIGHT #2 ~RandomNum(2,1)~ THEN BEGIN 0
  SAY @1467
  IF ~~ THEN REPLY @15248 DO ~StartStore("friend",LastTalkedToBy())~ JOURNAL @310355 EXIT
  IF ~~ THEN REPLY @15249 EXIT
END

IF WEIGHT #3 ~True()~ THEN BEGIN 1
  SAY @1468
  IF ~~ THEN REPLY @15251 DO ~StartStore("friend",LastTalkedToBy())~ JOURNAL @310754 EXIT
  IF ~~ THEN REPLY @15252 EXIT
END

IF WEIGHT #0 ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @1469
  IF ~~ THEN DO ~StartStore("friend",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1470
  IF ~~ THEN REPLY @15259 DO ~StartStore("friend",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15260 EXIT
END
