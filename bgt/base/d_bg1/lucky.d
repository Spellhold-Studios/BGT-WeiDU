BEGIN ~lucky~

IF ~True()~ THEN BEGIN 0
  SAY @11701
  IF ~~ THEN REPLY @11705 DO ~StartStore("stocheap",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @11706 EXIT
END
