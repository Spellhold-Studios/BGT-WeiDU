ADD_STATE_TRIGGER ~imoen2j~ 15 ~Global("ENDOFBG1","GLOBAL",2)~

//BG1 section

APPEND ~imoen2j~

IF ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s71
  SAY @16411
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

END
