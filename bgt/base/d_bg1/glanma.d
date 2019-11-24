BEGIN ~glanma~

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @2847
  IF ~HasWeaponEquiped(LastTalkedToBy)~ THEN REPLY @2864 GOTO 3
  IF ~~ THEN REPLY @2865 GOTO 16
  IF ~!HasWeaponEquiped(LastTalkedToBy)~ THEN REPLY @2869 GOTO 5
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @2848
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @2866 GOTO 5
  IF ~~ THEN REPLY @2867 GOTO 16
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @2868 GOTO 3
END

IF WEIGHT #4 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @2849
  IF ~!HasWeaponEquiped(LastTalkedToBy)~ THEN REPLY @2870 GOTO 5
  IF ~HasWeaponEquiped(LastTalkedToBy)~ THEN REPLY @2871 GOTO 3
  IF ~~ THEN REPLY @2872 GOTO 16
END

IF ~~ THEN BEGIN 3
  SAY @2850
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN BEGIN 4
  SAY @2851
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @2852
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @2873 GOTO 12
  IF ~~ THEN REPLY @2874 GOTO 6
  IF ~~ THEN REPLY @2875 GOTO 7
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @2876 GOTO 13
END

IF ~~ THEN BEGIN 6
  SAY @2853
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @2854
  IF ~~ THEN REPLY @2877 GOTO 8
  IF ~~ THEN REPLY @2878 GOTO 9
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @2879 GOTO 10
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @2880 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @2855
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @2856
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @2857
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @2858
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @2859
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @2860
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 14
  SAY @9119
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @9120
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @14380
  IF ~~ THEN DO ~Wait(10)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)
CreateCreature("FLAMEN",[0.0],0)~ EXIT
END
