ADD_STATE_TRIGGER ~edwinj~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 1 3 4 5 6 9 10 15 37 61 162 170


APPEND ~edwinj~

IF ~Dead("Dynaheir")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("DynaheirDeath","GLOBAL",0)~ THEN BEGIN s0
  SAY @16738
  IF ~~ THEN REPLY @16739 DO ~SetGlobal("DynaheirDeath","GLOBAL",1)
EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
JoinParty()~ SOLVED_JOURNAL @320539 EXIT
  IF ~~ THEN REPLY @16740 DO ~SetGlobal("DynaheirDeath","GLOBAL",1)
EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)~ SOLVED_JOURNAL @320539 GOTO s1
END

IF ~~ THEN BEGIN s1
  SAY @16741
  IF ~~ THEN DO ~SetGlobal("FindDynaheir","GLOBAL",2)
GiveGoldForce(500)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s2
  SAY @16742
  IF ~~ THEN DO ~LeaveParty()
  EscapeArea()~ EXIT
END

IF ~GlobalTimerExpired("Edwin","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("FindDynaheir","GLOBAL",0)
!Dead("Dynaheir")~ THEN BEGIN s4
  SAY @17218
  IF ~~ THEN DO ~SetGlobalTimer("Edwin","GLOBAL",SIX_DAYS)
SetGlobal("FindDynaheir","GLOBAL",1)~ EXIT
END

IF ~GlobalTimerExpired("Edwin","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("FindDynaheir","GLOBAL",1)
!Dead("Dynaheir")~ THEN BEGIN s5
  SAY @17220
  IF ~~ THEN DO ~SetGlobal("FindDynaheir","GLOBAL",2)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN s6
  SAY @10682
  IF ~~ THEN DO ~SetGlobal("SeenDynaheir","GLOBAL",1)~ EXTERN ~DYNAHE~ s8
END

IF ~~ THEN BEGIN s7
  SAY @10683
  IF ~~ THEN EXTERN ~DYNAHE~ s9
END

IF ~~ THEN BEGIN s8
  SAY @10684
  IF ~!InParty("Dynaheir")~ THEN EXTERN ~DYNAHE~ s19
  IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNAJ~ s9
END

IF ~~ THEN BEGIN s9
  SAY @10685
  IF ~!InParty("Dynaheir")~ THEN EXTERN ~DYNAHE~ s14
  IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNAJ~ s10
END

IF ~~ THEN BEGIN s10
  SAY @10686
  IF ~!InParty("Dynaheir")~ THEN EXTERN ~DYNAHE~ s15
  IF ~InParty("Dynaheir")~ THEN EXTERN ~DYNAJ~ s11
END

IF ~~ THEN BEGIN s11
  SAY @10687
  IF ~!InParty("Dynaheir")
InParty("Minsc")~ THEN DO ~ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
ActionOverride("Minsc",SetDialog("Minsc"))
LeaveParty()
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight2","GLOBAL",1)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
  IF ~InParty("Dynaheir")
!InParty("Minsc")~ THEN DO ~ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",SetDialog("Dynahe"))
LeaveParty()
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
  IF ~!InParty("Dynaheir")
!InParty("Minsc")~ THEN DO ~LeaveParty()
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
  IF ~InParty("Minsc")
InParty("Dynaheir")~ THEN DO ~ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",SetDialog("Dynahe"))
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
LeaveParty()
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight2","GLOBAL",1)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN s12
  SAY @10688
  IF ~~ THEN DO ~SetGlobal("EdwinAbandoned","GLOBAL",1)
EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
LeaveParty()
EscapeArea()~ SOLVED_JOURNAL @320531 EXIT
END

END
