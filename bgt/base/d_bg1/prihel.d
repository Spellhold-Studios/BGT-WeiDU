BEGIN ~prihel~

IF ~True()~ THEN BEGIN 0
  SAY @15397
  IF ~~ THEN REPLY @15400 EXIT
  IF ~~ THEN REPLY @15399 DO ~StartStore("tem0002",LastTalkedToBy())~ EXIT
END
