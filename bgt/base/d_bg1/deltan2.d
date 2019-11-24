BEGIN ~deltan2~

IF ~True()~ THEN BEGIN 0
  SAY @16991
  IF ~~ THEN DO ~GiveItemCreate("MISC55",LastTalkedToBy,0,0,0)
GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0)
DestroySelf()~ JOURNAL @310216 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @16992
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @16993
  IF ~~ THEN EXIT
END
