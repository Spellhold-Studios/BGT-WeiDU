BEGIN ~lussel~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15145
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @15147
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @15148
  IF ~~ THEN REPLY @15750 DO ~SetGlobal("HelpLusselyn","GLOBAL",1)
TakePartyGold(100)~ UNSOLVED_JOURNAL @310226 EXIT
  IF ~~ THEN REPLY @15749 EXIT
END

IF WEIGHT #5 ~Global("HelpLusselyn","GLOBAL",0)~ THEN BEGIN 3
  SAY @15149
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~Dead("Jellmul")
Global("HelpLusselyn","GLOBAL",1)
!Global("LusselynGaveGold","GLOBAL",1)~ THEN BEGIN 4
  SAY @15150
  IF ~~ THEN DO ~GivePartyGold(160)
SetGlobal("LusselynGaveGold","GLOBAL",1)
EraseJournalEntry(@310226)~ SOLVED_JOURNAL @310227 EXIT
END

IF WEIGHT #4 ~false()~ THEN BEGIN 5
  SAY @15151
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~True()~ THEN BEGIN 6
  SAY @15152
  IF ~~ THEN EXIT
END
