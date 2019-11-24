BEGIN ~maltz~

IF ~True()~ THEN BEGIN 0
  SAY @10085
  IF ~~ THEN DO ~StartStore("sto1112",LastTalkedToBy())~ EXIT
END
