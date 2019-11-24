ADD_STATE_TRIGGER ~imoen2~ 1 ~Global("ENDOFBG1","GLOBAL",2)~


APPEND ~imoen2~

IF ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s0
  SAY @16402
  IF ~~ THEN REPLY @16404 GOTO s1
  IF ~~ THEN REPLY @16405 GOTO s2
END

IF ~~ THEN BEGIN s1
  SAY @16403
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN s2
  SAY @16406
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~False()~ THEN BEGIN s3
  SAY @16407
  IF ~~ THEN DO ~LeaveParty()
SetDialog("ImoenP")~ EXIT
END

IF ~False()
HappinessLT(Myself,0)~ THEN BEGIN s4
  SAY @16409
  IF ~~ THEN DO ~LeaveParty()~ EXIT
END

END

