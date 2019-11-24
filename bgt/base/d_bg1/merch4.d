BEGIN ~merch4~

IF ~True()~ THEN BEGIN 0
  SAY @15763
  IF ~~ THEN REPLY @15764 EXIT
  IF ~~ THEN REPLY @15765 DO ~StartStore("sto4906",LastTalkedToBy())~ EXIT
END
