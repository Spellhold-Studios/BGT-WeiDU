BEGIN ~bgshop01~

IF ~True()~ THEN BEGIN 0
  SAY @15371
  IF ~~ THEN REPLY @15372 DO ~StartStore("sto1112",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15373 EXIT
END
