BEGIN ~dynahe~

IF WEIGHT #3 ~NumTimesTalkedTo(0)
InParty("Minsc")~ THEN BEGIN 0
  SAY @642
  IF ~~ THEN REPLY @4373 DO ~SetGlobal("HelpMinsc","GLOBAL",2)
AddexperienceParty(800)~ GOTO 6
  IF ~~ THEN REPLY @4374 DO ~SetGlobal("HelpMinsc","GLOBAL",2)
AddexperienceParty(800)~ GOTO 5
  IF ~~ THEN REPLY @4375 DO ~SetGlobal("HelpMinsc","GLOBAL",2)
AddexperienceParty(800)~ GOTO 3
  IF ~~ THEN REPLY @4376 DO ~SetGlobal("HelpMinsc","GLOBAL",2)
AddexperienceParty(800)~ GOTO 2
END

IF WEIGHT #4 ~NumTimesTalkedTo(0)
Dead("Minsc")~ THEN BEGIN 1
  SAY @643
  IF ~~ THEN REPLY @4377 DO ~SetGlobal("HelpMinsc","GLOBAL",2)
AddexperienceParty(800)~ GOTO 6
  IF ~~ THEN REPLY @4379 DO ~SetGlobal("HelpMinsc","GLOBAL",2)
AddexperienceParty(800)~ GOTO 4
  IF ~~ THEN REPLY @4380 DO ~SetGlobal("HelpMinsc","GLOBAL",2)
AddexperienceParty(800)~ GOTO 17
  IF ~~ THEN REPLY @4381 DO ~SetGlobal("HelpMinsc","GLOBAL",2)
AddexperienceParty(800)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @644
  IF ~InParty("Minsc")~ THEN REPLY @4383 GOTO 5
  IF ~~ THEN REPLY @4384 GOTO 3
  IF ~~ THEN REPLY @4387 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @645
  IF ~InParty("Minsc")~ THEN REPLY @4390 GOTO 5
  IF ~~ THEN REPLY @4392 GOTO 2
  IF ~~ THEN REPLY @4393 GOTO 6
  IF ~~ THEN REPLY @10039 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @646
  IF ~~ THEN DO ~EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @647
  IF ~~ THEN EXTERN ~MINSCJ~ s6
END

IF ~~ THEN BEGIN 6
  SAY @648
  IF ~~ THEN DO ~EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
JoinParty()~ SOLVED_JOURNAL @310065 EXIT
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("EDWIN")~ THEN BEGIN 7
  SAY @649
  IF ~~ THEN DO ~AddexperienceParty(800)
SetGlobal("HelpMinsc","GLOBAL",2)
SetGlobal("FindDynaheir","GLOBAL",2)~ EXTERN ~EDWINJ~ s6
END

IF ~~ THEN BEGIN s8
  SAY @650
  IF ~~ THEN EXTERN ~EDWINJ~ s7
END

IF ~~ THEN BEGIN s9
  SAY @651
  IF ~~ THEN REPLY @4412 GOTO 11
  IF ~~ THEN REPLY @4413 GOTO 10
  IF ~InParty("Edwin")~ THEN REPLY @4414 EXTERN ~EDWINJ~ s8
END

IF ~~ THEN BEGIN 10
  SAY @652
  IF ~~ THEN DO ~ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @653
  IF ~~ THEN DO ~AddexperienceParty(800)
JoinParty()~ EXTERN ~EDWINJ~ s12
END

IF ~~ THEN BEGIN 12
  SAY @654
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @655
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s14
  SAY @656
  IF ~~ THEN EXTERN ~EDWINJ~ s10
END

IF ~~ THEN BEGIN s15
  SAY @657
  IF ~~ THEN EXTERN ~EDWINJ~ s11
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 16
  SAY @4410
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @6877
  IF ~~ THEN REPLY @6880 GOTO 4
  IF ~~ THEN REPLY @6882 GOTO 6
END

IF ~~ THEN BEGIN 18
  SAY @6879
  IF ~~ THEN REPLY @6885 GOTO 4
  IF ~~ THEN REPLY @6886 GOTO 17
  IF ~~ THEN REPLY @6887 GOTO 6
END

IF ~~ THEN BEGIN s19
  SAY @8788
  IF ~~ THEN EXTERN ~EDWINJ~ s9
END

IF WEIGHT #1 ~Dead("Edwin")
GlobalLT("ENDOFBG1","GLOBAL",2)
NumTimesTalkedToGT(0)~ THEN BEGIN 20
  SAY @9331
  IF ~~ THEN REPLY @9332 GOTO 4
  IF ~~ THEN REPLY @9333 GOTO 36
END

IF WEIGHT #5 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("MINSC")
!InParty("EDWIN")~ THEN BEGIN 21
  SAY @13893
  IF ~~ THEN REPLY @13894 DO ~AddexperienceParty(800)
SetGlobal("HelpMinsc","GLOBAL",2)~ GOTO 22
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @13895 DO ~AddexperienceParty(800)
SetGlobal("HelpMinsc","GLOBAL",2)~ GOTO 24
  IF ~~ THEN REPLY @13896 DO ~AddexperienceParty(800)
SetGlobal("HelpMinsc","GLOBAL",2)~ GOTO 23
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @13922 DO ~AddexperienceParty(800)
SetGlobal("HelpMinsc","GLOBAL",2)~ GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY @13897
  IF ~~ THEN REPLY @13919 GOTO 23
  IF ~~ THEN REPLY @13921 DO ~EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @13899
  IF ~~ THEN DO ~EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
ActionOverride("Minsc",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @13917
  IF ~~ THEN REPLY @13918 DO ~EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @13920 GOTO 23
END

IF ~~ THEN BEGIN 25
  SAY @13938
  IF ~~ THEN EXTERN ~MINSC~ 14
END

IF ~~ THEN BEGIN 26
  SAY @13940
  IF ~~ THEN REPLY @13941 EXTERN ~MINSC~ 10
  IF ~~ THEN REPLY @13942 EXTERN ~MINSC~ 10
  IF ~~ THEN REPLY @13943 EXTERN ~MINSC~ 15
  IF ~~ THEN REPLY @13944 GOTO 4
END

IF ~~ THEN BEGIN 27
  SAY @13946
  IF ~~ THEN DO ~ActionOverride("Minsc",JoinParty())~ EXIT
END

IF ~~ THEN BEGIN s28
  SAY @14369
  IF ~~ THEN DO ~ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN s29
  SAY @14370
  IF ~~ THEN REPLY @14371 GOTO 30
  IF ~~ THEN REPLY @14372 EXTERN ~MINSC~ 17
END

IF ~~ THEN BEGIN 30
  SAY @14373
  IF ~~ THEN DO ~ActionOverride("Minsc",JoinParty())
  JoinParty()~ EXIT
END

IF WEIGHT #1 ~False()~ THEN BEGIN 31
  SAY @14375
  IF ~~ THEN DO ~LeaveParty()
SetDialogue("Dynap")~ EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 32
  SAY @16110
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 33
  SAY @16111
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #4 ~False()~ THEN BEGIN 34
  SAY @16112
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @10132
  IF ~~ THEN DO ~SetGlobal("FindDynaheir","GLOBAL",2)
AddexperienceParty(900)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY @20703
  IF ~~ THEN DO ~ActionOverride("Minsc",DialogueInterrupt(TRUE))
ActionOverride("Minsc",JoinParty())
EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
JoinParty()~ SOLVED_JOURNAL @310065 EXIT
END
