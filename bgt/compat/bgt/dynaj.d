BEGIN ~dynaj~

IF ~~ THEN BEGIN s0
  SAY @16726
  IF ~~ THEN EXTERN ~MINSC~ 14
END

IF ~~ THEN BEGIN s1
  SAY @16727
  IF ~~ THEN REPLY @16728 EXTERN ~MINSC~ 12
  IF ~~ THEN REPLY @16729 EXTERN ~MINSC~ 12
  IF ~~ THEN REPLY @16730 EXTERN ~MINSC~ 15
  IF ~~ THEN REPLY @16732 EXTERN ~MINSC~ 19
END

IF ~~ THEN BEGIN s2
  SAY @16731
  IF ~~ THEN DO ~LeaveParty()
SetDialog("DynaP")~ EXIT
END

IF ~~ THEN BEGIN s3
  SAY @16733
  IF ~~ THEN DO ~ActionOverride("Minsc",JoinParty())
JoinParty()~ EXIT
END

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Minsc")~ THEN BEGIN s4
  SAY @16734
  IF ~~ THEN DO ~LeaveParty()
EscapeAreaDestroy(90)~ EXIT
END

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Minsc")~ THEN BEGIN s5
  SAY @16735
  IF ~~ THEN DO ~ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",EscapeAreaDestroy(90))
LeaveParty()
EscapeAreaDestroy(90)~ EXIT
END

IF ~False()
!InParty("Minsc")~ THEN BEGIN s6
  SAY @16736
  IF ~~ THEN DO ~LeaveParty()
SetDialog("DynaP")~ EXIT
END

IF ~False()
InParty("Minsc")~ THEN BEGIN s7
  SAY @16737
  IF ~~ THEN DO ~ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialog("MinscP"))
LeaveParty()
SetDialog("DynaP")~ EXIT
END

IF ~~ THEN BEGIN s8
  SAY @16744
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s9
  SAY @20613
  IF ~!InParty("Edwin")~ THEN EXTERN ~EDWIN~ s26
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ s9
END

IF ~~ THEN BEGIN s10
  SAY @20614
  IF ~!InParty("Edwin")~ THEN EXTERN ~EDWIN~ s18
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ s10
END

IF ~~ THEN BEGIN s11
  SAY @20615
  IF ~!InParty("Edwin")~ THEN EXTERN ~EDWIN~ s19
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ s11
END

IF ~~ THEN BEGIN s12
  SAY @14370
  IF ~~ THEN REPLY @14371 GOTO s13
  IF ~~ THEN REPLY @14372 EXTERN ~MINSC~ 19
END

IF ~~ THEN BEGIN s13
  SAY @14373
  IF ~~ THEN DO ~ActionOverride("Minsc",JoinParty())
  JoinParty()~EXIT
END

