ADD_STATE_TRIGGER ~edwin~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 11 17 20 44 63 67 69 70

APPEND ~edwin~

IF ~NumberOfTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
!Dead("Dynaheir")
!InParty("DYNAHEIR")~ THEN BEGIN s0
  SAY @613
  IF ~~ THEN REPLY @792 GOTO s8
  IF ~~ THEN REPLY @793 GOTO s7
  IF ~~ THEN REPLY @794 GOTO s3
  IF ~~ THEN REPLY @795 GOTO s4
END

IF ~NumberOfTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
!Dead("Dynaheir")
!InParty("DYNAHEIR")~ THEN BEGIN s1
  SAY @614
  IF ~~ THEN REPLY @796 GOTO s8
  IF ~~ THEN REPLY @797 GOTO s7
  IF ~~ THEN REPLY @800 GOTO s3
  IF ~~ THEN REPLY @801 GOTO s4
END

IF ~NumberOfTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
!Dead("Dynaheir")
!InParty("DYNAHEIR")~ THEN BEGIN s2
  SAY @615
  IF ~~ THEN REPLY @798 GOTO s8
  IF ~~ THEN REPLY @799 GOTO s7
  IF ~~ THEN REPLY @802 GOTO s3
  IF ~~ THEN REPLY @803 GOTO s4
END

IF ~~ THEN BEGIN s3
  SAY @616
  IF ~~ THEN REPLY @804 GOTO s8
  IF ~~ THEN REPLY @805 GOTO s7
  IF ~~ THEN REPLY @806 GOTO s6
  IF ~~ THEN REPLY @807 GOTO s4
END

IF ~~ THEN BEGIN s4
  SAY @617
  IF ~~ THEN REPLY @809 GOTO s8
  IF ~~ THEN REPLY @810 GOTO s7
  IF ~~ THEN REPLY @811 GOTO s3
  IF ~~ THEN REPLY @813 GOTO s5
END

IF ~~ THEN BEGIN s5
  SAY @618
  IF ~~ THEN DO ~SetGlobal("EdwinAbandoned","GLOBAL",1)
EscapeArea()~ SOLVED_JOURNAL @320547 EXIT
END

IF ~~ THEN BEGIN s6
  SAY @619
  IF ~~ THEN DO ~SetGlobal("EdwinAbandoned","GLOBAL",1)
EscapeArea()~ SOLVED_JOURNAL @320547 EXIT
END

IF ~~ THEN BEGIN s7
  SAY @620
  IF ~~ THEN DO ~SetGlobal("EdwinAbandoned","GLOBAL",1)
EscapeArea()~ SOLVED_JOURNAL @320547 EXIT
END

IF ~~ THEN BEGIN s8
  SAY @621
  IF ~~ THEN DO ~RevealAreaOnMap("AR4100")
SetGlobalTimer("Edwin","GLOBAL",TEN_DAYS)
JoinParty()~ UNSOLVED_JOURNAL @320548 EXIT
END

IF ~NumberOfTimesTalkedTo(0)
See("Dynaheir")
InParty("DYNAHEIR")
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s9
  SAY @623
  IF ~~ THEN REPLY @814 GOTO s13
  IF ~~ THEN REPLY @815 GOTO s12
  IF ~~ THEN REPLY @816 GOTO s10
  IF ~~ THEN REPLY @817 GOTO s11
END

IF ~~ THEN BEGIN s10
  SAY @624
  IF ~~ THEN REPLY @818 GOTO s13
  IF ~~ THEN REPLY @819 GOTO s12
  IF ~~ THEN REPLY @820 GOTO s12
  IF ~~ THEN REPLY @821 GOTO s11
END

IF ~~ THEN BEGIN s11
  SAY @625
  IF ~~ THEN EXTERN ~DYNAJ~ s9
END

IF ~~ THEN BEGIN s12
  SAY @626
  IF ~~ THEN DO ~SetGlobal("EdwinAbandoned","GLOBAL",1)
EscapeArea()~ SOLVED_JOURNAL @320522 EXIT
END

IF ~~ THEN BEGIN s13
  SAY @627
  IF ~~ THEN DO ~JoinParty()~ EXTERN ~DYNAJ~ s8
END

IF ~Dead("Dynaheir")
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s14
  SAY @628
  IF ~~ THEN REPLY @8784 DO ~EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
SetGlobal("DynaheirDeath","GLOBAL",1)
JoinParty()~ SOLVED_JOURNAL @320539 EXIT
  IF ~~ THEN REPLY @8785 GOTO s20
  IF ~~ THEN REPLY @8786 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN s15
  SAY @630
  IF ~~ THEN EXTERN ~DYNAHE~ s8
END

IF ~~ THEN BEGIN s16
  SAY @631
  IF ~~ THEN EXTERN ~DYNAHE~ s9
END

IF ~~ THEN BEGIN s17
  SAY @632
  IF ~~ THEN DO ~SetGlobal("EdwinAbandoned","GLOBAL",1)
SetGlobalTimer("EdwinRevenge","GLOBAL",FIFTEEN_DAYS)
LeaveParty()
EscapeArea()~ SOLVED_JOURNAL @320531 EXIT
END

IF ~~ THEN BEGIN s18
  SAY @633
  IF ~~ THEN EXTERN ~DYNAJ~ s11
END

IF ~~ THEN BEGIN s19
  SAY @634
  IF ~!Detect("Minsc")~ THEN DO ~ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",SetDialog("Dynahe"))
ActionOverride("Dynaheir",ChangeAIScript("",DEFAULT))
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
  IF ~Detect("Minsc")~ THEN DO ~ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialog("Minsc"))
ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",SetDialog("Dynahe"))
ActionOverride("Dynaheir",ChangeAIScript("",DEFAULT))
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN s20
  SAY @635
  IF ~~ THEN DO ~SetGlobal("EdwinAbandoned","GLOBAL",1)
GivePartyGold(500)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~NumberOfTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("DynaheirDead","GLOBAL",1)
Global("MinscDead","GLOBAL",1)~ THEN BEGIN s21
  SAY @9326
  IF ~~ THEN REPLY @9327 GOTO s22
  IF ~~ THEN REPLY @9328 DO ~EscapeArea()~ GOTO s22
END

IF ~~ THEN BEGIN s22
  SAY @9329
  IF ~~ THEN DO ~EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
JoinParty()~ SOLVED_JOURNAL @320539 EXIT
END

IF ~~ THEN BEGIN s23
  SAY @9330
  IF ~~ THEN DO ~EraseJournalEntry(@320548)
SetGlobal("EdwinAbandoned","GLOBAL",1)
EscapeArea()
~ SOLVED_JOURNAL @320531 EXIT
END

IF ~Global("EdwinAbandoned","GLOBAL",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("DYNAHEIR")~ THEN BEGIN s24
  SAY @9335
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("EdwinAbandoned","GLOBAL",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("DYNAHEIR")~ THEN BEGIN s25
  SAY @9336
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN s26
  SAY @9337
  IF ~~ THEN EXTERN ~DYNAJ~ s10
END

IF ~False()~ THEN BEGIN s27
  SAY @15440
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN s28
  SAY @15441
  IF ~~ THEN DO ~LeaveParty()~ EXIT
END

IF ~~ THEN BEGIN s29
  SAY @625
  IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNAJ~ s13
  IF ~!InParty("Dynaheir")~ THEN EXTERN ~DYNAHE~ s19
END

IF ~~ THEN BEGIN s30
  SAY @632
  IF ~~ THEN DO ~SetGlobal("EdwinAbandoned","GLOBAL",1)
SetGlobalTimer("EdwinRevenge","GLOBAL",FIFTEEN_DAYS)
LeaveParty()
EscapeArea()~ EXIT
END

END
