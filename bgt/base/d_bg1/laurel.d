BEGIN ~laurel~

IF WEIGHT #4 ~ReputationLT(LastTalkedToBy,8)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @14843
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #5 ~ReputationLT(LastTalkedToBy,15)
ReputationGT(LastTalkedToBy,7)
NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @14844
  IF ~~ THEN REPLY @14883 GOTO 3
  IF ~~ THEN REPLY @14884 GOTO 4
END

IF WEIGHT #6 ~ReputationGT(LastTalkedToBy,14)
NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @14845
  IF ~~ THEN REPLY @14886 GOTO 8
  IF ~~ THEN REPLY @14885 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @14846
  IF ~~ THEN DO ~SetInterrupt(FALSE)
Wait(3)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
Wait(15)
SetNumTimesTalkedTo(10)
SetInterrupt(TRUE)~ UNSOLVED_JOURNAL @310458 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @14847
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #0 ~false()~ THEN BEGIN 5
  SAY @14848
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 6
  SAY @14849
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~NumTimesTalkedTo(10)~ THEN BEGIN 7
  SAY @14850
  IF ~~ THEN DO ~AddexperienceParty(250)
SetGlobal("HelpLaurel","GLOBAL",1)
EraseJournalEntry(@310458)
EraseJournalEntry(@310460)
EscapeArea()~ SOLVED_JOURNAL @310459 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @14887
  IF ~~ THEN DO ~SetInterrupt(FALSE)
Wait(3)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
CreateCreature("GIBBER",[954.938],0)
Wait(15)
SetNumTimesTalkedTo(10)
SetInterrupt(TRUE)~ UNSOLVED_JOURNAL @310460 EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(11)~ THEN BEGIN 9
  SAY @20611
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
