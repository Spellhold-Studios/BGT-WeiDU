BEGIN ~bart2~

IF ~RandomNum(4,1)~ THEN BEGIN 0
  SAY @337
  IF ~~ THEN REPLY @15057 DO ~StartStore("tav4809",LastTalkedToBy())~ JOURNAL @310750 EXIT
  IF ~~ THEN REPLY @15058 EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 1
  SAY @338
  IF ~~ THEN DO ~StartStore("tav4809",LastTalkedToBy())~ JOURNAL @310353 EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 2
  SAY @339
  IF ~~ THEN DO ~StartStore("tav4809",LastTalkedToBy())~ JOURNAL @310753 EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 3
  SAY @340
  IF ~~ THEN DO ~StartStore("tav4809",LastTalkedToBy())~ EXIT
END
