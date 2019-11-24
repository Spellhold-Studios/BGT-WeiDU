ADD_STATE_TRIGGER ~viconij~ 53 ~Global("ENDOFBG1","GLOBAL",2)~ 97 106 108 136


APPEND ~viconij~

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s0
  SAY @16650
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN s1
  SAY @16651
  IF ~~ THEN DO ~LeaveParty()
SetDialog("ViconiP")~ EXIT
END

END
