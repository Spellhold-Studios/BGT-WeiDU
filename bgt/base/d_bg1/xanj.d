BEGIN ~xanj~

IF ~HappinessLT(Myself,0)~ THEN BEGIN 0
  SAY @16679
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 1
  SAY @16680
  IF ~~ THEN DO ~LeaveParty()
SetDialog("XanP")~ EXIT
END
