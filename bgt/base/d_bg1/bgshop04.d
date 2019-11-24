BEGIN ~bgshop04~

IF ~True()~ THEN BEGIN 0
  SAY @15380
  IF ~~ THEN REPLY @15381 DO ~StartStore("sto1115",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15382 EXIT
END
