BEGIN ~drasus~

IF ~True()~ THEN BEGIN 0
  SAY @17924
  IF ~~ THEN REPLY @17925 GOTO 1
  IF ~~ THEN REPLY @17926 GOTO 2
  IF ~~ THEN REPLY @17927 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @17928
  IF ~~ THEN DO ~ActionOverride("REZDAN",Enemy())
ActionOverride("KYSUS",Enemy())
ActionOverride("GENTHORE",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @17929
  IF ~~ THEN DO ~ActionOverride("REZDAN",Enemy())
ActionOverride("KYSUS",Enemy())
ActionOverride("GENTHORE",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @17930
  IF ~~ THEN DO ~ActionOverride("REZDAN",Enemy())
ActionOverride("KYSUS",Enemy())
ActionOverride("GENTHORE",Enemy())
Enemy()~ EXIT
END
