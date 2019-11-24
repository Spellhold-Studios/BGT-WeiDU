BEGIN ~bgshop03~

IF ~True()~ THEN BEGIN 0
  SAY @15377
  IF ~~ THEN REPLY @15378 DO ~StartStore("sto1112",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15379 EXIT
END
