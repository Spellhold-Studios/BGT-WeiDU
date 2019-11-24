BEGIN ~vail~

IF ~True()~ THEN BEGIN 0
  SAY @10543
  IF ~Global("Baldurian","GLOBAL",1)~ THEN REPLY @10544 DO ~AddexperienceParty(500)~ GOTO 1
  IF ~Global("Baldurian","GLOBAL",1)~ THEN REPLY @10545 DO ~AddexperienceParty(500)~ GOTO 2
  IF ~~ THEN REPLY @10588 DO ~AddexperienceParty(500)~ GOTO 9
  IF ~~ THEN REPLY @10591 DO ~AddexperienceParty(500)~ GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY @10546
  IF ~~ THEN REPLY @10547 GOTO 2
  IF ~~ THEN REPLY @10548 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @10549
  IF ~~ THEN REPLY @10551 GOTO 8
  IF ~~ THEN REPLY @10553 GOTO 4
  IF ~~ THEN REPLY @10555 GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @10550
  IF ~~ THEN REPLY @10552 GOTO 8
  IF ~~ THEN REPLY @10554 GOTO 4
  IF ~~ THEN REPLY @10556 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @10561
  IF ~~ THEN REPLY @10568 DO ~GiveItem("SCRLVAIL",LastTalkedToBy)
SetGlobal("Baldurian","GLOBAL",2)~ UNSOLVED_JOURNAL @310168 GOTO 5
  IF ~~ THEN REPLY @10569 DO ~GiveItem("SCRLVAIL",LastTalkedToBy)
SetGlobal("Baldurian","GLOBAL",2)~ UNSOLVED_JOURNAL @310168 GOTO 6
  IF ~~ THEN REPLY @10583 DO ~GiveItem("SCRLVAIL",LastTalkedToBy)
SetGlobal("Baldurian","GLOBAL",2)~ UNSOLVED_JOURNAL @310168 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @10570
  IF ~~ THEN DO ~ActionOverride("RANCE",Enemy())
ActionOverride("CAILAN",Enemy())
ActionOverride("FAIZAH",Enemy())
ActionOverride("ACHEN",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10571
  IF ~~ THEN DO ~ActionOverride("RANCE",EscapeArea())
ActionOverride("CAILAN",EscapeArea())
ActionOverride("FAIZAH",EscapeArea())
ActionOverride("ACHEN",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @10574
  IF ~~ THEN DO ~SetGlobal("Baldurian","GLOBAL",2)
ActionOverride("RANCE",EscapeArea())
ActionOverride("CAILAN",EscapeArea())
ActionOverride("FAIZAH",EscapeArea())
ActionOverride("ACHEN",EscapeArea())
EscapeArea()~ UNSOLVED_JOURNAL @310169 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @10579
  IF ~~ THEN DO ~ActionOverride("RANCE",Enemy())
ActionOverride("CAILAN",Enemy())
ActionOverride("FAIZAH",Enemy())
ActionOverride("ACHEN",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @10590
  IF ~~ THEN DO ~ActionOverride("RANCE",EscapeArea())
ActionOverride("CAILAN",EscapeArea())
ActionOverride("FAIZAH",EscapeArea())
ActionOverride("ACHEN",EscapeArea())
EscapeArea()~ EXIT
END
