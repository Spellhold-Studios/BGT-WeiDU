BEGIN ~ghorak~

IF ~Global("HelpGhorak","GLOBAL",1)
Global("HelpAgnasia","GLOBAL",0)~ THEN BEGIN 0
  SAY @15216
  IF ~~ THEN EXIT
END

IF ~Global("HelpAgnasia","GLOBAL",0)~ THEN BEGIN 1
  SAY @15217
  IF ~~ THEN REPLY @17177 GOTO 2
  IF ~~ THEN REPLY @17178 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @15221
  IF ~~ THEN DO ~SetGlobal("HelpGhorak","GLOBAL",1)~ UNSOLVED_JOURNAL @310180 EXIT
END

IF ~Global("HelpAgnasia","GLOBAL",1)~ THEN BEGIN 3
  SAY @15222
  IF ~~ THEN DO ~Polymorph(FIGHTER_MALE_HUMAN)
  SetGlobal("HelpAgnasia","GLOBAL",2)
  SetGlobal("HelpGhorak","GLOBAL",2)~ EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @15223
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 5
  SAY @15224
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
