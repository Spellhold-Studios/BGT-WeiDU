BEGIN ~ajantj~

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 0
  SAY @16621
  IF ~~ THEN DO ~SetGlobal("AjantisLeave","GLOBAL",1)
LeaveParty()
Enemy()~ EXIT
END

IF ~False()~ THEN BEGIN 1
  SAY @16623
  IF ~~ THEN DO ~LeaveParty()
SetDialog("AjantP")~ EXIT
END