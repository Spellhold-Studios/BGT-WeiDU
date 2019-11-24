BEGIN ~bgshop07~

IF ~True()~ THEN BEGIN 0
  SAY @15389
  IF ~~ THEN REPLY @15390 DO ~StartStore("sto1115",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15391 EXIT
END
