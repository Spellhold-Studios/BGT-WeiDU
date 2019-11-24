BEGIN ~obe~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @10742
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @10744
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @10746
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @10747
  IF ~~ THEN DO ~SetGlobal("Practice","GLOBAL",1)
ActionOverride("Osprey",JoinParty())
ActionOverride("Canderous",JoinParty())
ActionOverride("Mordaine",JoinParty())
ActionOverride("Arkanis",JoinParty())
ActionOverride("Deeder",JoinParty())
CreateCreature("BGIGIBB",[724.660],0)
CreateCreature("BGIGIBB",[754.701],0)
CreateCreature("BGIGIBB",[698.568],0)
CreateCreature("BGIGIBB",[823.574],0)
CreateCreature("BGIGIBB",[919.533],0)
CreateCreature("BGIGIBB",[798.460],0)
TriggerActivation("Door0015",FALSE)
~ EXIT
END

IF ~Global("Practice","GLOBAL",1)
CombatCounter(0)~ THEN BEGIN 4
  SAY @10748
  IF ~~ THEN REPLY @10749 GOTO 6
  IF ~~ THEN REPLY @10750 GOTO 5
  IF ~~ THEN REPLY @11255 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10751
  IF ~~ THEN DO ~ClearAllActions()
SetInterrupt(FALSE)
SetGlobal("OBE","GLOBAL",0)
SetGlobal("TrainingDay","GLOBAL",1)
SetInterrupt(TRUE)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10752
  IF ~~ THEN DO ~SetGlobal("Practice","GLOBAL",2)
CreateCreature("ixvart",[724.660],0)
CreateCreature("ixvart",[754.701],0)
CreateCreature("ixvart",[698.568],0)
CreateCreature("ixvart",[823.574],0)
CreateCreature("ixvart",[919.533],0)
CreateCreature("ixvart",[798.460],0)
~ EXIT
END

IF ~Global("Practice","GLOBAL",2)
CombatCounter(0)~ THEN BEGIN 7
  SAY @10753
  IF ~~ THEN REPLY @10756 GOTO 8
  IF ~~ THEN REPLY @10757 GOTO 5
  IF ~~ THEN REPLY @11256 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @10755
  IF ~~ THEN DO ~SetGlobal("Practice","GLOBAL",3)
CreateCreature("iskelet",[724.660],0)
CreateCreature("iskelet",[754.701],0)
CreateCreature("iskelet",[698.568],0)
CreateCreature("iskelet",[823.574],0)
CreateCreature("iskelet",[919.533],0)
CreateCreature("iskelet",[798.460],0)
~ EXIT
END

IF ~Global("Practice","GLOBAL",3)
CombatCounter(0)~ THEN BEGIN 9
  SAY @10758
  IF ~~ THEN REPLY @10759 GOTO 10
  IF ~~ THEN REPLY @10760 GOTO 5
  IF ~~ THEN REPLY @11257 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @10761
  IF ~~ THEN DO ~SetGlobal("Practice","GLOBAL",4)
CreateCreature("ikobold",[724.660],0)
CreateCreature("ikobold",[754.701],0)
CreateCreature("ikobold",[698.568],0)
CreateCreature("ikobold",[823.574],0)
CreateCreature("ikobold",[919.533],0)
CreateCreature("ikobold",[798.460],0)
~ EXIT
END

IF ~Global("Practice","GLOBAL",4)
CombatCounter(0)~ THEN BEGIN 11
  SAY @10762
  IF ~~ THEN REPLY @10764 GOTO 12
  IF ~~ THEN REPLY @10765 GOTO 5
  IF ~~ THEN REPLY @11258 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @10766
  IF ~~ THEN DO ~SetGlobal("Practice","GLOBAL",5)
CreateCreature("itasloi",[724.660],0)
CreateCreature("itasloi",[754.701],0)
CreateCreature("itasloi",[698.568],0)
CreateCreature("itasloi",[823.574],0)
CreateCreature("itasloi",[919.533],0)
CreateCreature("itasloi",[798.460],0)
~ EXIT
END

IF ~Global("Practice","GLOBAL",10)
CombatCounter(0)~ THEN BEGIN 13
  SAY @10767
  IF ~~ THEN DO ~ClearAllActions()
SetInterrupt(FALSE)
SetGlobal("OBE","GLOBAL",0)
SetGlobal("TrainingDay","GLOBAL",1)
SetInterrupt(TRUE)
~ EXIT
END

IF ~CombatCounter(0)~ THEN BEGIN 14
  SAY @10768
  IF ~~ THEN REPLY @10769 GOTO 15
  IF ~~ THEN REPLY @10770 GOTO 5
  IF ~~ THEN REPLY @11259 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @10771
  IF ~~ THEN DO ~IncrementGlobal("Practice","GLOBAL",1)
CreateCreature("ihobgob",[724.660],0)
CreateCreature("ihobgob",[754.701],0)
CreateCreature("ihobgob",[698.568],0)
CreateCreature("ihobgob",[823.574],0)
CreateCreature("ihobgob",[919.533],0)
CreateCreature("ihobgob",[798.460],0)
~ EXIT
END
