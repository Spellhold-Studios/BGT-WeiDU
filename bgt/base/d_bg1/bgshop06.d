BEGIN ~bgshop06~

IF ~True()~ THEN BEGIN 0
  SAY @15386
  IF ~~ THEN REPLY @15387 DO ~StartStore("sto1115",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15388 EXIT
END
