BEGIN ~zhalim~

IF ~~ THEN BEGIN 0
  SAY @17938
  IF ~~ THEN DO ~ActionOverride("EMITAR3",ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT_LESSER))
ActionOverride("ALAI",Enemy())
ActionOverride("AASIM",Enemy())
ActionOverride("DIYAB",Enemy())
ActionOverride("GARDUSH",Enemy())
ActionOverride("NAAMAN",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @17939
  IF ~~ THEN DO ~ActionOverride("EMITAR3",ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT_LESSER))
ActionOverride("ALAI",Enemy())
ActionOverride("AASIM",Enemy())
ActionOverride("DIYAB",Enemy())
ActionOverride("GARDUSH",Enemy())
ActionOverride("NAAMAN",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @17940
  IF ~~ THEN DO ~ActionOverride("EMITAR3",ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT_LESSER))
ActionOverride("ALAI",Enemy())
ActionOverride("AASIM",Enemy())
ActionOverride("DIYAB",Enemy())
ActionOverride("GARDUSH",Enemy())
ActionOverride("NAAMAN",Enemy())
Enemy()
~ EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @20335
  IF ~~ THEN REPLY @20336 DO ~SetGlobal("Throne","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @20337 DO ~SetGlobal("Throne","GLOBAL",1)~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @20338
  IF ~~ THEN REPLY @20339 GOTO 0
  IF ~~ THEN REPLY @20340 GOTO 1
  IF ~~ THEN REPLY @20341 GOTO 2
END

IF ~~ THEN BEGIN 5
  SAY @20343
  IF ~~ THEN REPLY @20344 GOTO 2
  IF ~~ THEN REPLY @20345 GOTO 0
  IF ~~ THEN REPLY @20346 GOTO 1
END
