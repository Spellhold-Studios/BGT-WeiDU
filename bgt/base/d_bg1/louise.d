BEGIN ~louise~

IF ~NumTimesTalkedTo(0)
Global("TalkedToLaerta","GLOBAL",0)
!Dead("Laerta")~ THEN BEGIN 0
  SAY @15302
  IF ~~ THEN EXTERN ~LAERTA~ 0
END

IF ~True()~ THEN BEGIN 1
  SAY @11785
  IF ~~ THEN EXIT
END
