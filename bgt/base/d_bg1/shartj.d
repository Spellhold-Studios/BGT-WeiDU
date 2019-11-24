BEGIN ~shartj~

IF ~~ THEN BEGIN 0
  SAY @16778
  IF ~~ THEN EXTERN ~ANGELO~ 5
END

IF ~~ THEN BEGIN 1
  SAY @16779
  IF ~~ THEN EXTERN ~ANGELO~ 6
END

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 2
  SAY @16780
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 3
  SAY @16781
  IF ~~ THEN DO ~LeaveParty()
SetDialog("SharTP")~ EXIT
END
