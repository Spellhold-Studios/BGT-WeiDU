BEGIN ~skiej~

IF WEIGHT #2 ~False()
!InParty("Eldoth")~ THEN BEGIN 0
  SAY @16767
  IF ~~ THEN DO ~LeaveParty()
SetDialog("SkieP")~ EXIT
END

IF WEIGHT #3 ~False()
InParty("Eldoth")~ THEN BEGIN 1
  SAY @16768
  IF ~~ THEN DO ~ActionOverride("Eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("Eldoth",LeaveParty())
ActionOverride("Eldoth",SetDialog("EldotP"))
LeaveParty()
SetDialog("SkieP")~ EXIT
END

IF WEIGHT #0 ~HappinessLT(Myself,0)
!InParty("Eldoth")~ THEN BEGIN 2
  SAY @16769
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #1 ~HappinessLT(Myself,0)
InParty("Eldoth")~ THEN BEGIN 3
  SAY @16770
  IF ~~ THEN DO ~ActionOverride("Eldoth",LeaveParty())
ActionOverride("Eldoth",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END
