BEGIN ~molkar~

IF ~True()~ THEN BEGIN 0
  SAY @18199
  IF ~~ THEN REPLY @18200 JOURNAL @310437 GOTO 1
  IF ~~ THEN REPLY @18201 GOTO 2
  IF ~~ THEN REPLY @18202 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @18203
  IF ~~ THEN DO ~ActionOverride("DRAKAR",Enemy())
ActionOverride("MORVIN",Enemy())
ActionOverride("HALACAN",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18204
  IF ~~ THEN DO ~ActionOverride("DRAKAR",Enemy())
ActionOverride("MORVIN",Enemy())
ActionOverride("HALACAN",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18205
  IF ~~ THEN DO ~ActionOverride("DRAKAR",Enemy())
ActionOverride("MORVIN",Enemy())
ActionOverride("HALACAN",Enemy())
Enemy()~ EXIT
END
