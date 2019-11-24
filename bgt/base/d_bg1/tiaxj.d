BEGIN ~tiaxj~

IF ~HappinessLT(Myself,0)~ THEN BEGIN 0
  SAY @16681
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 1
  SAY @16682
  IF ~~ THEN DO ~LeaveParty()
SetDialog("TiaxP")~ EXIT
END