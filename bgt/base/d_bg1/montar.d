BEGIN ~montar~

IF ~~ THEN BEGIN 0
  SAY @229
  IF ~~ THEN EXTERN ~XZAR~ 3
END

IF ~~ THEN BEGIN 1
  SAY @230
  IF ~~ THEN EXTERN ~XZAR~ 3
END

IF ~~ THEN BEGIN 2
  SAY @231
  IF ~~ THEN EXTERN ~XZAR~ 9
END

IF ~~ THEN BEGIN 3
  SAY @232
  IF ~~ THEN EXTERN ~XZAR~ 5
END

IF ~~ THEN BEGIN 4
  SAY @233
  IF ~~ THEN EXTERN ~XZAR~ 6
END

IF ~~ THEN BEGIN 5
  SAY @234
  IF ~~ THEN EXTERN ~XZAR~ 8
END

IF ~~ THEN BEGIN 6
  SAY @235
  IF ~~ THEN REPLY @249 EXTERN ~XZAR~ 10
  IF ~~ THEN REPLY @250 EXTERN ~XZAR~ 11
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @251 EXTERN ~XZAR~ 12
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @252 EXTERN ~XZAR~ 13
END

IF ~~ THEN BEGIN 7
  SAY @236
  IF ~~ THEN DO ~SetGlobalTimer("Montaron","GLOBAL",SIX_DAYS)
SetGlobalTimer("Xzar","GLOBAL",FOUR_DAYS)
SetGlobal("VisitNashkell","GLOBAL",1)
ActionOverride("Xzar",JoinParty())
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @237
  IF ~~ THEN DO ~ActionOverride("Xzar",MoveToPoint([4551.2374]))
ActionOverride("Xzar",EscapeArea())
MoveToPoint([4482.2375])
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @239
  IF ~~ THEN DO ~ActionOverride("Xzar",MoveToPoint([4551.2374]))
ActionOverride("Xzar",EscapeArea())
MoveToPoint([4482.2375])
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @240
  IF ~~ THEN DO ~SetGlobalTimer("Montaron","GLOBAL",NINE_DAYS)
SetGlobalTimer("Xzar","GLOBAL",SEVEN_DAYS)
SetGlobal("VisitNashkell","GLOBAL",1)
ActionOverride("Xzar",JoinParty())
JoinParty()~ EXIT
END

IF WEIGHT #5 ~GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 11
  SAY @15437
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("SpokeToXzar","GLOBAL",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 12
  SAY @15582
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~False()~ THEN BEGIN 13
  SAY @16059
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 14
  SAY @16060
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 15
  SAY @16061
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #4 ~False()~ THEN BEGIN 16
  SAY @16062
  IF ~~ THEN DO ~~ EXIT
END
