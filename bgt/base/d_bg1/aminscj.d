ADD_STATE_TRIGGER ~minscj~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 4 11 12 13 17 21 22 223 225 238


APPEND ~minscj~

IF ~GlobalTimerExpired("Minsc","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("HelpMinsc","GLOBAL",0)~ THEN BEGIN s0
  SAY @16716
  IF ~~ THEN DO ~SetGlobalTimer("Minsc","GLOBAL",SIX_DAYS)
SetGlobal("HelpMinsc","GLOBAL",1)~ UNSOLVED_JOURNAL @310063 EXIT
END

IF ~GlobalTimerExpired("Minsc","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("HelpMinsc","GLOBAL",1)~ THEN BEGIN s1
  SAY @16717
  IF ~~ THEN DO ~SetGlobal("HelpMinsc","GLOBAL",2)
LeaveParty()
ChangeAIScript("WDASIGHT",CLASS)
Enemy()
SetGlobal("WhenBooAttacks","GLOBAL",1)~ EXIT
END

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Dynaheir")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s2
  SAY @16718
  IF ~~ THEN DO ~LeaveParty()
Enemy()~ EXIT
END

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Dynaheir")
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN s3
  SAY @16719
  IF ~~ THEN DO ~ActionOverride("Dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",EscapeArea())
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()
!InParty("Dynaheir")~ THEN BEGIN s4
  SAY @16720
  IF ~~ THEN DO ~LeaveParty()
SetDialog("MinscP")~ EXIT
END

IF ~False()
InParty("Dynaheir")~ THEN BEGIN s5
  SAY @16721
  IF ~~ THEN DO ~ActionOverride("Dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",SetDialog("DynaP"))
LeaveParty()
SetDialog("MinscP")~ EXIT
END

IF ~~ THEN BEGIN s6
  SAY @16722
  IF ~~ THEN REPLY @16723 DO ~EraseJournalEntry(@310062)
EraseJournalEntry(@310063)
EraseJournalEntry(@310380)
EraseJournalEntry(@320548)
ActionOverride("Dynaheir",EscapeArea())
LeaveParty()
EscapeArea()~ SOLVED_JOURNAL @310064 EXIT
  IF ~~ THEN REPLY @16725 EXTERN ~DYNAHE~ 6
END

IF ~~ THEN BEGIN s7
  SAY @16724
  IF ~~ THEN EXIT
END

END
