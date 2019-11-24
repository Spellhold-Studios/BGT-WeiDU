BEGIN ~silke~

IF ~Global("SilkeFightOver","GLOBAL",0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Global("TalkedToGarrick","GLOBAL",1)
Global("SilkeJob","GLOBAL",0)
!Dead("Garrick")~ THEN BEGIN 0
  SAY @569
  IF ~~ THEN DO ~SetGlobal("TalkedToGarrick","GLOBAL",2)~ EXTERN ~GARRIC~ 8
END

IF ~Global("SilkeFightOver","GLOBAL",0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
Global("TalkedToGarrick","GLOBAL",1)
Global("SilkeJob","GLOBAL",0)
!Dead("Garrick")~ THEN BEGIN 1
  SAY @570
  IF ~~ THEN DO ~SetGlobal("TalkedToGarrick","GLOBAL",2)~ EXTERN ~GARRIC~ 9
END

IF ~Global("SilkeFightOver","GLOBAL",0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
Global("TalkedToGarrick","GLOBAL",1)
Global("SilkeJob","GLOBAL",0)~ THEN BEGIN 2
  SAY @571
  IF ~~ THEN REPLY @583 DO ~SetGlobal("TalkedToGarrick","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @584 DO ~SetGlobal("TalkedToGarrick","GLOBAL",2)
SetGlobal("SilkePayment","GLOBAL",200)~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @572
  IF ~~ THEN DO ~SetGlobal("SilkePayment","GLOBAL",400)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @573
  IF ~~ THEN DO ~SetGlobal("SilkeJob","GLOBAL",1)
CreateCreature("MERSIL",[3834.1755],0)
CreateCreature("MERSIL2",[3793.1723],0)
CreateCreature("MERSIL3",[3876.1774],0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Silkecut")~ UNSOLVED_JOURNAL @310043 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @576
  IF ~~ THEN EXTERN ~MERSIL~ 1
END

IF ~~ THEN BEGIN 6
  SAY @577
  IF ~~ THEN REPLY @585 GOTO 7
  IF ~~ THEN REPLY @586 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @578
  IF ~~ THEN EXTERN ~GARRIC~ 5
END

IF ~~ THEN BEGIN 8
  SAY @579
  IF ~~ THEN DO ~EraseJournalEntry(@310043)~ SOLVED_JOURNAL @310044 EXTERN ~GARRIC~ 5
END

IF ~~ THEN BEGIN 9
  SAY @580
  IF ~~ THEN EXTERN ~GARRIC~ 11
END

IF ~Global("AttackedMerchant","GLOBAL",1)
Global("TalkedToGarrick","GLOBAL",2)
Global("SilkeFightOver","GLOBAL",1)
Global("SilkePay","GLOBAL",0)~ THEN BEGIN 10
  SAY @582
  IF ~~ THEN DO ~ReputationInc(-2)
GivePartyGoldGlobal("SilkePayment","GLOBAL")
EraseJournalEntry(@310043)
SetGlobal("SilkePay","GLOBAL",1)~ SOLVED_JOURNAL @310045 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @784
  IF ~~ THEN EXIT
END

IF ~Global("Chapter","GLOBAL",8)
Global("SilkeFightOver","GLOBAL",1)
Global("AttackedSilke","GLOBAL",1)~ THEN BEGIN 12
  SAY @6394
  IF ~~ THEN REPLY @7560 GOTO 13
  IF ~~ THEN REPLY @7561 GOTO 14
  IF ~~ THEN REPLY @7562 GOTO 15
END

IF ~~ THEN BEGIN 13
  SAY @7551
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @7552
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @7553
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @7554
  IF ~~ THEN EXIT
END

IF ~Global("Chapter","GLOBAL",8)
Global("SilkeFightOver","GLOBAL",1)
Global("AttackedSilke","GLOBAL",0)~ THEN BEGIN 17
  SAY @7555
  IF ~~ THEN REPLY @7563 GOTO 18
  IF ~~ THEN REPLY @7564 GOTO 19
  IF ~~ THEN REPLY @7565 GOTO 20
END

IF ~~ THEN BEGIN 18
  SAY @7556
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @7557
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @7558
  IF ~~ THEN REPLY @7567 GOTO 23
  IF ~~ THEN REPLY @7568 EXIT
END

IF ~Global("Chapter","GLOBAL",8)
Global("SilkeFightOver","GLOBAL",0)~ THEN BEGIN 21
  SAY @7559
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @7566
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @7569
  IF ~~ THEN EXIT
END

IF ~Global("AttackedMerchant","GLOBAL",0)
Global("TalkedToGarrick","GLOBAL",2)
Global("SilkeFightOver","GLOBAL",1)~ THEN BEGIN 24
  SAY @563
  IF ~~ THEN EXIT
END

IF ~Global("TalkedToGarrick","GLOBAL",0)
Global("SilkeFightOver","GLOBAL",0)~ THEN BEGIN 25
  SAY @13898
  IF ~~ THEN EXIT
END
