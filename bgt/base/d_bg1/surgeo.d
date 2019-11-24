BEGIN ~surgeo~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @824
  IF ~~ THEN GOTO 2
END

IF ~False()~ THEN BEGIN 1
  SAY @825
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @826
  IF ~HPPercentLT(MostDamagedOf(Myself),100)~ THEN REPLY @830 GOTO 4
  IF ~~ THEN REPLY @831 GOTO 3
  IF ~Global("SurgeonStory","GLOBAL",0)~ THEN REPLY @832 DO ~SetGlobal("SurgeonStory","GLOBAL",1)~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @827
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @828
  IF ~~ THEN DO ~ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @829
  IF ~~ THEN DO ~GiveItem("POTN34",LastTalkedToBy)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
Wait(1)
ForceSpell(MostDamagedOf(Myself),CLERIC_CURE_LIGHT_WOUNDS)
EscapeArea()
~ GOTO 4
END
