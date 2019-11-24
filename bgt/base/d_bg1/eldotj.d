BEGIN ~eldotj~

IF WEIGHT #3 ~AreaCheck("AR7200")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("EldothMove","GLOBAL",0)
InParty("Eldoth")~ THEN BEGIN 0
  SAY @16745
  IF ~~ THEN REPLY @16746 DO ~SetGlobal("EldothMove","GLOBAL",1)
SetGlobalTimer("RescueSkie","GLOBAL",ONE_DAY)~ GOTO 1
  IF ~~ THEN REPLY @16747 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @16748
  IF ~~ THEN REPLY @16749 DO ~EraseJournalEntry(@310107)
LeaveParty()
EscapeArea()~ SOLVED_JOURNAL @310110 EXIT
  IF ~~ THEN REPLY @16750 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @16751
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Eldcut01")~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @16752
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @16753
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~AreaCheck("AR7200")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("EldothMove","GLOBAL",2)
InParty("Eldoth")~ THEN BEGIN 5
  SAY @16754
  IF ~~ THEN DO ~SetGlobal("EldothMove","GLOBAL",3)~ EXIT
END

IF WEIGHT #0 ~GlobalTimerExpired("RescueSkie","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Skie")
!Dead("Skie")
InParty("Eldoth")~ THEN BEGIN 6
  SAY @16755
  IF ~~ THEN DO ~EraseJournalEntry(@310107)
LeaveParty()
EscapeArea()~ SOLVED_JOURNAL @310111 EXIT
END

IF WEIGHT #1 ~See("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Skie")~ THEN BEGIN 7
  SAY @16756
  IF ~~ THEN EXTERN ~SKIE~ 6
END

IF ~~ THEN BEGIN 8
  SAY @16757
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @16758
  IF ~~ THEN DO ~ActionOverride("Skie",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #2 ~InParty("Eldoth")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Skie")
Global("SkieRansomNote","GLOBAL",0)~ THEN BEGIN 10
  SAY @16759
  IF ~~ THEN DO ~SetGlobal("SkieRansomNote","GLOBAL",1)~ UNSOLVED_JOURNAL @310595 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @16760
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Skie")~ THEN BEGIN 12
  SAY @16761
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #6 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Skie")~ THEN BEGIN 13
  SAY @16763
  IF ~~ THEN DO ~ActionOverride("Skie",LeaveParty())
ActionOverride("Skie",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #7 ~False()
!InParty("Skie")~ THEN BEGIN 14
  SAY @16764
  IF ~~ THEN DO ~LeaveParty()
SetDialog("EldotP")~ EXIT
END

IF WEIGHT #8 ~False()
InParty("Skie")~ THEN BEGIN 15
  SAY @16765
  IF ~~ THEN DO ~ActionOverride("Skie",LeaveParty())
ActionOverride("Skie",SetDialog("SkieP"))
LeaveParty()
SetDialog("EldotP")~ EXIT
END