BEGIN ~seniya~

IF WEIGHT #3 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @952
  IF ~~ THEN EXTERN ~ALDETH~ 5
END

IF ~~ THEN BEGIN 1
  SAY @953
  IF ~~ THEN DO ~EndCutSceneMode()
Shout(1)
Enemy()~ EXIT
END

IF WEIGHT #5 ~Dead("Aldeth")
Global("SeniyadXP","GLOBAL",0)~ THEN BEGIN 2
  SAY @954
  IF ~~ THEN DO ~AddexperienceParty(2000)
SetGlobal("SeniyadXP","GLOBAL",1)
EraseJournalEntry(@310102)
Shout(3)
EscapeArea()~ SOLVED_JOURNAL @310103 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @6387
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9089
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~false()~ THEN BEGIN 5
  SAY @698
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Dead("Aldeth")
InParty("Faldorn")
Global("SeniyadXP","GLOBAL",0)~ THEN BEGIN 6
  SAY @318
  IF ~~ THEN DO ~AddexperienceParty(1000)
SetGlobal("SeniyadXP","GLOBAL",1)
EraseJournalEntry(@310102)
Shout(3)
EscapeArea()~ SOLVED_JOURNAL @310103 EXTERN ~FALDOR~ 4
END
