BEGIN ~charle~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8538
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @8539
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @8562 GOTO 2
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @8563 GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,14,STR)~ THEN REPLY @8564 GOTO 4
  IF ~CheckStatLT(LastTalkedToBy,15,STR)~ THEN REPLY @8565 GOTO 5
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @8566 GOTO 6
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @8567 GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @8540
  IF ~~ THEN REPLY @8568 GOTO 8
  IF ~~ THEN REPLY @8569 GOTO 9
  IF ~~ THEN REPLY @8570 GOTO 10
END

IF ~~ THEN BEGIN 3
  SAY @8541
  IF ~~ THEN DO ~SetGlobal("CharlestonMoved","GLOBAL",1)
CreateCreature("GALLOR",[3077.1261],1)
ActionOverride("Gallor",MoveToPoint([3069.1315]))
MoveToPoint([3077.1261])~ SOLVED_JOURNAL @310576 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8542
  IF ~~ THEN REPLY @8571 GOTO 6
  IF ~~ THEN REPLY @8572 GOTO 11
  IF ~~ THEN REPLY @8573 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @8543
  IF ~~ THEN REPLY @8574 GOTO 6
  IF ~~ THEN REPLY @8575 GOTO 10
  IF ~~ THEN REPLY @8576 GOTO 13
  IF ~~ THEN REPLY @8577 GOTO 12
END

IF ~~ THEN BEGIN 6
  SAY @8544
  IF ~~ THEN REPLY @8578 GOTO 9
  IF ~~ THEN REPLY @8579 GOTO 8
  IF ~~ THEN REPLY @8580 GOTO 14
END

IF ~~ THEN BEGIN 7
  SAY @8545
  IF ~~ THEN REPLY @8581 GOTO 14
  IF ~~ THEN REPLY @8582 GOTO 8
  IF ~~ THEN REPLY @8583 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @8546
  IF ~~ THEN REPLY @8584 GOTO 15
  IF ~~ THEN REPLY @8585 GOTO 14
  IF ~~ THEN REPLY @8586 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @8547
  IF ~~ THEN DO ~SetGlobal("CharlestonMoved","GLOBAL",1)
CreateCreature("GALLOR",[3077.1261],1)
ActionOverride("Gallor",MoveToPoint([3069.1315]))
MoveToPoint([3077.1261])~ SOLVED_JOURNAL @310576 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8548
  IF ~~ THEN DO ~SetGlobal("CharlestonMoved","GLOBAL",1)
CreateCreature("GALLOR",[3077.1261],1)
ActionOverride("Gallor",MoveToPoint([3069.1315]))
MoveToPoint([3077.1261])~ SOLVED_JOURNAL @310576 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8549
  IF ~~ THEN DO ~SetGlobal("CharlestonMoved","GLOBAL",1)
CreateCreature("GALLOR",[3077.1261],1)
ActionOverride("Gallor",MoveToPoint([3069.1315]))
MoveToPoint([3077.1261])~ SOLVED_JOURNAL @310576 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8550
  IF ~~ THEN DO ~SetGlobal("CharlestonMoved","GLOBAL",1)
CreateCreature("GALLOR",[3077.1261],1)
ActionOverride("Gallor",MoveToPoint([3069.1315]))
MoveToPoint([3077.1261])~ SOLVED_JOURNAL @310576 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @8551
  IF ~~ THEN DO ~Shout(99)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @8552
  IF ~CheckStatLT(LastTalkedToBy,9,STR)~ THEN REPLY @8587 GOTO 9
  IF ~~ THEN REPLY @8589 GOTO 9
  IF ~~ THEN REPLY @8590 DO ~SetGlobal("CharlestonPay","GLOBAL",50)~ GOTO 15
  IF ~CheckStatGT(LastTalkedToBy,8,STR)~ THEN REPLY @8588 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @8553
  IF ~~ THEN DO ~SetGlobal("HelpCharleston","GLOBAL",1)
SetGlobal("CharlestonMoved","GLOBAL",1)
CreateCreature("GALLOR",[3077.1261],1)
ActionOverride("Gallor",MoveToPoint([3069.1315]))
MoveToPoint([3077.1261])~ UNSOLVED_JOURNAL @310575 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @8554
  IF ~~ THEN REPLY @8591 DO ~SetGlobal("CharlestonPay","GLOBAL",100)~ GOTO 15
  IF ~~ THEN REPLY @8592 GOTO 9
END

IF WEIGHT #3 ~Global("CharlestonMoved","GLOBAL",1)
Global("HelpCharleston","GLOBAL",1)~ THEN BEGIN 17
  SAY @8555
  IF ~~ THEN DO ~SetGlobal("CharlestonMoved","GLOBAL",2)
ClearAllActions()
StartCutScene("Digcut01")~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @8556
  IF ~~ THEN EXTERN ~DIGGER~ 7
END

IF WEIGHT #4 ~NumDeadGT("CharleDig",5)
PartyHasItem("MISC48")
Global("TalkedToCharleston","GLOBAL",1)~ THEN BEGIN 19
  SAY @8558
  IF ~~ THEN DO ~SetGlobal("TalkedToCharleston","GLOBAL",2)~ GOTO 21
END

IF WEIGHT #5 ~NumDeadGT("CharleDig",5)
!PartyHasItem("MISC48")
Global("TalkedToCharleston","GLOBAL",1)~ THEN BEGIN 20
  SAY @8559
  IF ~~ THEN DO ~SetGlobal("TalkedToCharleston","GLOBAL",2)~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @8560
  IF ~~ THEN DO ~GivePartyGoldGlobal("CharlestonPay","GLOBAL")
TakePartyItem("MISC48")
AddexperienceParty(1000)
ReputationInc(1)
EraseJournalEntry(@310575)
EraseJournalEntry(@310579)~ SOLVED_JOURNAL @310577 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 22
  SAY @8953
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @8954
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~Global("CharlestonMoved","GLOBAL",1)
Global("HelpCharleston","GLOBAL",0)~ THEN BEGIN 24
  SAY @1211
  IF ~~ THEN EXIT
END
