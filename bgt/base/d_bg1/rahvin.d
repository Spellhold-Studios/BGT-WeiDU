BEGIN ~rahvin~

IF ~True()~ THEN BEGIN 0
  SAY @19800
  IF ~~ THEN REPLY @19803 GOTO 3
  IF ~~ THEN REPLY @19804 GOTO 2
  IF ~~ THEN REPLY @19805 GOTO 1
  IF ~~ THEN REPLY @19806 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @19807
  IF ~~ THEN DO ~ActionOverride("GORF",Enemy())
ActionOverride("HASEO",Enemy())
ActionOverride("SHALDRISSA",Enemy())
ActionOverride("CARSTON",Enemy())
ActionOverride("WUDEI",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19808
  IF ~~ THEN REPLY @19811 GOTO 4
  IF ~~ THEN REPLY @19812 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @19813
  IF ~~ THEN DO ~ActionOverride("GORF",Enemy())
ActionOverride("HASEO",Enemy())
ActionOverride("SHALDRISSA",Enemy())
ActionOverride("CARSTON",Enemy())
ActionOverride("WUDEI",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @19820
  IF ~~ THEN DO ~ActionOverride("GORF",Enemy())
ActionOverride("HASEO",Enemy())
ActionOverride("SHALDRISSA",Enemy())
ActionOverride("CARSTON",Enemy())
ActionOverride("WUDEI",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @19821
  IF ~~ THEN DO ~ActionOverride("GORF",Enemy())
ActionOverride("HASEO",Enemy())
ActionOverride("SHALDRISSA",Enemy())
ActionOverride("CARSTON",Enemy())
ActionOverride("WUDEI",Enemy())
Enemy()~ EXIT
END
