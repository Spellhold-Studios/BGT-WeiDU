BEGIN ~coranj~

IF WEIGHT #0 ~Dead("X#CoranWyvern")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Coran")
Global("CoranReward","GLOBAL",0)~ THEN BEGIN s0
  SAY @16789
  IF ~~ THEN DO ~SetGlobal("CoranReward","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN s1
  SAY @16790
  IF ~~ THEN EXTERN ~BRIELB~ 1
END

IF ~~ THEN BEGIN s2
  SAY @16791
  IF ~~ THEN EXTERN ~BRIELB~ 2
END

IF ~~ THEN BEGIN s3
  SAY @16792
  IF ~~ THEN REPLY @16793 DO ~LeaveParty()
EscapeArea()~ EXTERN ~BRIELB~ 11
  IF ~~ THEN REPLY @16794 EXTERN ~BRIELB~ 7
END

IF ~~ THEN BEGIN s4
  SAY @16795
  IF ~~ THEN EXTERN ~BRIELB~ 14
END

IF WEIGHT #1 ~!Dead("X#CoranWyvern")
GlobalLT("ENDOFBG1","GLOBAL",2)
GlobalTimerExpired("Coran","GLOBAL")
Global("CoranWyvern","GLOBAL",1)~ THEN BEGIN s5
  SAY @17222
  IF ~~ THEN DO ~SetGlobal("CoranWyvern","GLOBAL",2)
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #2 ~!Dead("X#CoranWyvern")
GlobalLT("ENDOFBG1","GLOBAL",2)
GlobalTimerExpired("Coran","GLOBAL")
Global("CoranWyvern","GLOBAL",0)~ THEN BEGIN s6
  SAY @17223
  IF ~~ THEN DO ~SetGlobalTimer("Coran","GLOBAL",EIGHT_DAYS)
SetGlobal("CoranWyvern","GLOBAL",1)~ EXIT
END

IF WEIGHT #4 ~False()~ THEN BEGIN s7
  SAY @11839
  IF ~~ THEN DO ~LeaveParty()SetDialog("CoranP")~ EXIT
END

IF WEIGHT #3 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s8
  SAY @11840
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END
