BEGIN ~schlum~

IF ~True()~ THEN BEGIN 0
  SAY @19917
  IF ~~ THEN REPLY @19919 GOTO 1
  IF ~~ THEN REPLY @19918 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @19920
  IF ~~ THEN REPLY @19921 GOTO 2
  IF ~~ THEN REPLY @19922 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @19923
  IF ~~ THEN DO ~ActionOverride("SEWERF1",Enemy())
ActionOverride("SEWERF2",Enemy())
ActionOverride("SEWERF3",Enemy())
ActionOverride("SEWERF4",Enemy())
ActionOverride("SEWERF5",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @19924
  IF ~~ THEN DO ~ActionOverride("SEWERF1",Enemy())
ActionOverride("SEWERF2",Enemy())
ActionOverride("SEWERF3",Enemy())
ActionOverride("SEWERF4",Enemy())
ActionOverride("SEWERF5",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @19925
  IF ~~ THEN REPLY @19926 GOTO 5
  IF ~~ THEN REPLY @19927 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @19928
  IF ~~ THEN REPLY @19929 GOTO 6
  IF ~~ THEN REPLY @19930 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @19931
  IF ~~ THEN DO ~ActionOverride("SEWERF1",Enemy())
ActionOverride("SEWERF2",Enemy())
ActionOverride("SEWERF3",Enemy())
ActionOverride("SEWERF4",Enemy())
ActionOverride("SEWERF5",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @19932
  IF ~~ THEN DO ~ActionOverride("SEWERF1",EscapeArea())
ActionOverride("SEWERF2",EscapeArea())
ActionOverride("SEWERF3",EscapeArea())
ActionOverride("SEWERF4",EscapeArea())
ActionOverride("SEWERF5",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @19933
  IF ~~ THEN REPLY @19934 GOTO 6
  IF ~~ THEN REPLY @19935 GOTO 7
END

IF ~False()~ THEN BEGIN 9
  SAY @19936
  IF ~~ THEN EXIT
END
