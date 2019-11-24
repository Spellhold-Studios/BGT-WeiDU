BEGIN ~aloraj~

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 0
  SAY @16626
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()
~ THEN BEGIN 1
  SAY @16627
  IF ~~ THEN DO ~LeaveParty()
SetDialog("AloraP")
~ EXIT
END

IF ~False()~ THEN BEGIN 2
  SAY @16628
  IF ~~ THEN DO ~~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 3
  SAY @5748
  IF ~~ THEN EXIT
END

