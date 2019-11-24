ADD_STATE_TRIGGER ~jaheiraj~ 0 ~Global("ENDOFBG1","GLOBAL",2)~ 32 34 53 62 71 81 105 106 107 157 197 198 200 201 202 203 204 264 276 291 378 437 441 447 528


APPEND ~jaheiraj~

IF ~False()
!InParty("Khalid")~ THEN BEGIN s0
  SAY @16687
  IF ~~ THEN DO ~LeaveParty()
SetDialog("JaheiraP")~ EXIT
END

IF ~False()
InParty("Khalid")~ THEN BEGIN s1
  SAY @16688
  IF ~~ THEN DO ~ActionOverride("Khalid",ChangeAIScript("",DEFAULT))
ActionOverride("Khalid",LeaveParty())
ActionOverride("Khalid",SetDialog("KhaliP"))
LeaveParty()
SetDialog("JaheiraP")~ EXIT
END

IF WEIGHT #-2 ~HappinessLT(Myself,0)
!InParty("Khalid")
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s2
  SAY @16689
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~HappinessLT(Myself,0)
InParty("Khalid")
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s3
  SAY @16690
  IF ~~ THEN DO ~ActionOverride("Khalid",ChangeAIScript("",DEFAULT))
ActionOverride("Khalid",LeaveParty())
ActionOverride("Khalid",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #-4 ~GlobalTimerExpired("Jaheira","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("Chapter","GLOBAL",2)
Global("GoToNashkell","GLOBAL",0)~ THEN BEGIN s4
  SAY @17216
  IF ~~ THEN DO ~SetGlobalTimer("Jaheira","GLOBAL",FOUR_DAYS)
SetGlobal("GoToNashkell","GLOBAL",1)~ EXIT
END

IF WEIGHT #-3 ~GlobalTimerExpired("Jaheira","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("Chapter","GLOBAL",2)
Global("GoToNashkell","GLOBAL",1)~ THEN BEGIN s5
  SAY @17217
  IF ~~ THEN DO ~SetGlobal("GoToNashkell","GLOBAL",2)~ EXIT
END

END
