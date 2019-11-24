BEGIN ~gatewere~

IF ~Global("Kaishas1","GLOBAL",0)
!Dead("karoug")~ THEN BEGIN 0
  SAY @21184
  IF ~~ THEN UNSOLVED_JOURNAL @310658 EXIT
END

IF ~Global("Kaishas1","GLOBAL",1)
!Dead("karoug")~ THEN BEGIN 1
  SAY @21185
  IF ~~ THEN EXIT
END

IF ~Global("Kaishas1","GLOBAL",1)
Dead("karoug")~ THEN BEGIN 2
  SAY @21186
  IF ~~ THEN EXIT
END
