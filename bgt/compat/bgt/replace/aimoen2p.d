APPEND ~imoen2p~

//BG2 part - continuous

IF ~Global("ENDOFBG1","GLOBAL",2)
Global("ImoenPartyBG1","GLOBAL",1)
Global("Chapter","GLOBAL",1)~ THEN BEGIN s0
  SAY #17357
  IF ~~ THEN REPLY #19956 GOTO s1
  IF ~~ THEN REPLY #19957 GOTO s2
  IF ~~ THEN REPLY #19958 GOTO s1
END

IF ~~ THEN BEGIN s1
  SAY #19961
  IF ~~ THEN DO ~LeaveParty()
SetDialog("IMOEN2")
SetNumTimesTalkedTo(0)
DestroyItem("IMOENHP1")
ChangeAIScript("",DEFAULT)
ChangeAIScript("IMOEN2",OVERRIDE)
MoveGlobal("AR1512",Myself,[1857.1520])~ EXIT
END

IF ~~ THEN BEGIN s2
  SAY #19962
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~HP(Myself,1)
Global("ENDOFBG1","GLOBAL",2)
Global("ImoenPartyBG1","GLOBAL",1)
Global("Chapter","GLOBAL",1)~ THEN BEGIN s3
  SAY #19965
  IF ~~ THEN DO ~LeaveParty()
SetDialog("IMOEN2")
SetNumTimesTalkedTo(0)
DestroyItem("IMOENHP1")
GivePartyAllEquipment()
ChangeAIScript("",DEFAULT)
ChangeAIScript("IMOEN2",OVERRIDE)
MoveGlobal("AR1512",Myself,[1857.1520])~ EXIT
END

//BG2 part - non-continuous

IF ~Global("ENDOFBG1","GLOBAL",2)
Global("ImoenPartyBG1","GLOBAL",0)
Global("Chapter","GLOBAL",1)~ THEN BEGIN s4
  SAY #17357
  IF ~~ THEN REPLY #19956 GOTO s5
  IF ~~ THEN REPLY #19957 GOTO s6
  IF ~~ THEN REPLY #19958 GOTO s5
END

IF ~~ THEN BEGIN s5
  SAY #19961
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN s6
  SAY #19962
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~HP(Myself,1)
Global("ENDOFBG1","GLOBAL",2)
Global("ImoenPartyBG1","GLOBAL",0)
Global("Chapter","GLOBAL",1)~ THEN BEGIN s7
  SAY #19965
  IF ~~ THEN DO ~LeaveParty()
GivePartyAllEquipment()
Wait(1)
EscapeArea()~ EXIT
END

END