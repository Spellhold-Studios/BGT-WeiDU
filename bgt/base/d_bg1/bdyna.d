BEGIN ~bdyna~

IF ~InteractingWith("Minsc")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 0
  SAY @14419
  IF ~~ THEN EXTERN ~BMINSC~ s5
END

IF ~~ THEN BEGIN 1
  SAY @14420
  IF ~~ THEN EXTERN ~BMINSC~ s0
END

IF ~~ THEN BEGIN 2
  SAY @14421
  IF ~~ THEN EXTERN ~BMINSC~ s3
END

IF ~~ THEN BEGIN 3
  SAY @14422
  IF ~~ THEN EXTERN ~BEDWIN~ s2
END

IF ~~ THEN BEGIN 4
  SAY @14423
  IF ~InParty("Minsc")
InParty("Edwin")~ THEN DO ~ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialogue("Minsc"))
ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
ActionOverride("Edwin",LeaveParty())
ActionOverride("Edwin",SetDialogue("Edwin"))
ActionOverride("Edwin",ChangeAIScript("",DEFAULT))
LeaveParty()
SetDialogue("Dynahe")
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight2","GLOBAL",1)
SetGlobal("EdwinFight","GLOBAL",1)~ EXIT
  IF ~!InParty("Minsc")
InParty("Edwin")~ THEN DO ~
ActionOverride("Edwin",LeaveParty())
ActionOverride("Edwin",SetDialogue("Edwin"))
ActionOverride("Edwin",ChangeAIScript("",DEFAULT))
LeaveParty()
SetDialogue("Dynahe")
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
  IF ~!InParty("Minsc")
!InParty("Edwin")~ THEN DO ~LeaveParty()
SetDialogue("Dynahe")
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
  IF ~InParty("Minsc")
!InParty("Edwin")~ THEN DO ~ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialogue("Minsc"))
ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
LeaveParty()
SetDialogue("Dynahe")
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight2","GLOBAL",1)
SetGlobal("EdwinFight","GLOBAL",1)~ EXIT
END

IF ~InteractingWith("Edwin")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Minsc")
See("Minsc")
RandomNum(2,1)~ THEN BEGIN 5
  SAY @14425
  IF ~~ THEN EXTERN ~BEDWIN~ s0
END

IF ~InteractingWith("Edwin")
GlobalLT("ENDOFBG1","GLOBAL",2)
!InParty("Minsc")~ THEN BEGIN 6
  SAY @14522
  IF ~~ THEN EXTERN ~BEDWIN~ s5
END

IF ~InteractingWith("Edwin")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(2,1)~ THEN BEGIN 7
  SAY @14523
  IF ~~ THEN EXTERN ~BEDWIN~ s8
END

IF ~~ THEN BEGIN 8
  SAY @14527
  IF ~~ THEN EXTERN ~BEDWIN~ s6
END

IF ~~ THEN BEGIN 9
  SAY @14528
  IF ~~ THEN EXTERN ~BEDWIN~ s7
END

IF ~~ THEN BEGIN 10
  SAY @14529
  IF ~InParty("Minsc")
InParty("Edwin")~ THEN DO ~ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialogue("Minsc"))
ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
ActionOverride("Edwin",LeaveParty())
ActionOverride("Edwin",SetDialogue("Edwin"))
ActionOverride("Edwin",ChangeAIScript("",DEFAULT))
LeaveParty()
SetDialogue("Dynahe")
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight2","GLOBAL",1)
SetGlobal("EdwinFight","GLOBAL",1)~ EXIT
  IF ~!InParty("Minsc")
InParty("Edwin")~ THEN DO ~
ActionOverride("Edwin",LeaveParty())
ActionOverride("Edwin",SetDialogue("Edwin"))
ActionOverride("Edwin",ChangeAIScript("",DEFAULT))
LeaveParty()
SetDialogue("Dynahe")
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
  IF ~!InParty("Minsc")
!InParty("Edwin")~ THEN DO ~LeaveParty()
SetDialogue("Dynahe")
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight","GLOBAL",1)~ EXIT
  IF ~InParty("Minsc")
!InParty("Edwin")~ THEN DO ~ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialogue("Minsc"))
ActionOverride("Minsc",ChangeAIScript("",DEFAULT))
LeaveParty()
SetDialogue("Dynahe")
ChangeAIScript("",DEFAULT)
SetGlobal("Edwinfight2","GLOBAL",1)
SetGlobal("EdwinFight","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @14531
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Edwin")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 12
  SAY @14532
  IF ~~ THEN EXTERN ~BEDWIN~ s9
END

IF ~~ THEN BEGIN 13
  SAY @14534
  IF ~~ THEN EXTERN ~BEDWIN~ s10
END

IF ~~ THEN BEGIN 14
  SAY @14536
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Edwin")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Minsc")
See("Minsc")~ THEN BEGIN 15
  SAY @14537
  IF ~~ THEN EXTERN ~BEDWIN~ s11
END

IF ~InteractingWith("Edwin")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Alora")
See("Alora")~ THEN BEGIN 16
  SAY @14540
  IF ~~ THEN EXTERN ~BEDWIN~ s12
END

IF ~~ THEN BEGIN 17
  SAY @14600
  IF ~~ THEN EXTERN ~BMINSC~ s1
END
