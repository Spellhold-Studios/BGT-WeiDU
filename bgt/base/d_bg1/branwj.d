BEGIN ~branwj~

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 0
  SAY @16632
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 1
  SAY @16633
  IF ~~ THEN DO ~LeaveParty()
SetDialog("BranwP")~ EXIT
END
