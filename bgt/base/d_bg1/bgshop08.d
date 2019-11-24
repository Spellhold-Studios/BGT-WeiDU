BEGIN ~bgshop08~

IF ~True()~ THEN BEGIN 0
  SAY @15392
  IF ~~ THEN REPLY @15393 DO ~StartStore("sto1115",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15394 EXIT
END
