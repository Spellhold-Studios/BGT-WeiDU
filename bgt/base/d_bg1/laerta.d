BEGIN ~laerta~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15292
  IF ~~ THEN DO ~CreateCreature("GERVIS",[807.497],0)
SetNumTimesTalkedTo(1)
SetGlobal("TalkedToLaerta","GLOBAL",1)~ UNSOLVED_JOURNAL @310163 EXIT
END

IF WEIGHT #1 ~Global("HelpLaerta","GLOBAL",0)~ THEN BEGIN 1
  SAY @15299
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~false()~ THEN BEGIN 2
  SAY @15300
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~True()~ THEN BEGIN 3
  SAY @15301
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~Global("HelpLaerta","GLOBAL",1)~ THEN BEGIN 4
  SAY @15308
  IF ~~ THEN DO ~SetGlobal("HelpLaerta","GLOBAL",2)
AddexperienceParty(1000)
GiveItem("SCRL78",LastTalkedToBy)~ EXIT
END
