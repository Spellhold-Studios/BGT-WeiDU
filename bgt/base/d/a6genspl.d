BEGIN ~a6genspl~

IF ~NumTimesTalkedTo(0) DifficultyGT(EASY) Global("A6GenSpl2","LOCALS",0)~ THEN BEGIN A6GenSpl_SetDifficulty
  SAY @204000
  IF ~~ THEN DO ~SetGlobal("A6GenSplDiffChange","LOCALS",1) SetNumTimesTalkedTo(0)~ EXIT
END

IF ~NumTimesTalkedTo(0) DifficultyLT(NORMAL) Global("A6GenSpl2","LOCALS",0)~ THEN BEGIN A6GenSpl_Initial
  SAY @204001
  IF ~OR(9)
Kit(LastTalkedToBy(), 0)
Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER)
Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER)
Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER)
Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER)
Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST)
Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER)
Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER)
Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER)~ THEN DO ~SetGlobal("A6GenSpl2","LOCALS",-1) SetGlobal("A6GenSpl3","LOCALS",-1) SetGlobal("A6GenSpl4","LOCALS",-1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), 0)
!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER)
!Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER)
!Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER)
!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER)
!Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST)
!Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER)
!Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER)
!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER)~ THEN GOTO A6GenSpl_L2Normal
END

IF ~Global("A6GenSpl2","LOCALS",-1)~ THEN BEGIN A6GenSpl_L2Special
  SAY @204002
    =
  @204003
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl2Blur","LOCALS",0)~ THEN REPLY @204004 DO ~ReallyForceSpellRES("A6SPW201",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Blur","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl2DetectEvil","LOCALS",0)~ THEN REPLY @204005 DO ~ReallyForceSpellRES("A6SPW202",LastTalkedToBy()) IncrementGlobal("A6GenSpl2DetectEvil","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl2DetectInvis","LOCALS",0)~ THEN REPLY @204006 DO ~ReallyForceSpellRES("A6SPW203",LastTalkedToBy()) IncrementGlobal("A6GenSpl2DetectInvis","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl2Horror","LOCALS",0)~ THEN REPLY @204007 DO ~ReallyForceSpellRES("A6SPW205",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Horror","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl2Invisibility","LOCALS",0)~ THEN REPLY @204008 DO ~ReallyForceSpellRES("A6SPW206",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Invisibility","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl2Knock","LOCALS",0)~ THEN REPLY @204009 DO ~ReallyForceSpellRES("A6SPW207",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Knock","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl2KnowAlign","LOCALS",0)~ THEN REPLY @204010 DO ~ReallyForceSpellRES("A6SPW208",LastTalkedToBy()) IncrementGlobal("A6GenSpl2KnowAlign","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl2Luck","LOCALS",0)~ THEN REPLY @204011 DO ~ReallyForceSpellRES("A6SPW209",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Luck","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl2ResistFear","LOCALS",0)~ THEN REPLY @204012 DO ~ReallyForceSpellRES("A6SPW210",LastTalkedToBy()) IncrementGlobal("A6GenSpl2ResistFear","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl2MelfAcidArrow","LOCALS",0)~ THEN REPLY @204013 DO ~ReallyForceSpellRES("A6SPW211",LastTalkedToBy()) IncrementGlobal("A6GenSpl2MelfAcidArrow","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl2MirrorImage","LOCALS",0)~ THEN REPLY @204014 DO ~ReallyForceSpellRES("A6SPW212",LastTalkedToBy()) IncrementGlobal("A6GenSpl2MirrorImage","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl2StinkingCloud","LOCALS",0)~ THEN REPLY @204015 DO ~ReallyForceSpellRES("A6SPW213",LastTalkedToBy()) IncrementGlobal("A6GenSpl2StinkingCloud","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl2Strength","LOCALS",0)~ THEN REPLY @204016 DO ~ReallyForceSpellRES("A6SPW214",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Strength","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl2Web","LOCALS",0)~ THEN REPLY @204017 DO ~ReallyForceSpellRES("A6SPW215",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Web","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl2Agannazar","LOCALS",0)~ THEN REPLY @204018 DO ~ReallyForceSpellRES("A6SPW217",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Agannazar","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl2GhoulTouch","LOCALS",0)~ THEN REPLY @204019 DO ~ReallyForceSpellRES("A6SPW218",LastTalkedToBy()) IncrementGlobal("A6GenSpl2GhoulTouch","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl2Vocalize","LOCALS",0)~ THEN REPLY @204020 DO ~ReallyForceSpellRES("A6SPW219",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Vocalize","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl2PWSleep","LOCALS",0)~ THEN REPLY @204021 DO ~ReallyForceSpellRES("A6SPW220",LastTalkedToBy()) IncrementGlobal("A6GenSpl2PWSleep","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl2RayEnfeeble","LOCALS",0)~ THEN REPLY @204022 DO ~ReallyForceSpellRES("A6SPW221",LastTalkedToBy()) IncrementGlobal("A6GenSpl2RayEnfeeble","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), 0) Global("A6GenSpl2ChaosShield","LOCALS",0)~ THEN REPLY @204023 DO ~ReallyForceSpellRES("A6SPW222",LastTalkedToBy()) IncrementGlobal("A6GenSpl2ChaosShield","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl2Deafness","LOCALS",0)~ THEN REPLY @204024 DO ~ReallyForceSpellRES("A6SPW223",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Deafness","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl2Glitterdust","LOCALS",0)~ THEN REPLY @204025 DO ~ReallyForceSpellRES("A6SPW224",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Glitterdust","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
END

IF ~Global("A6GenSpl2","LOCALS",0)~ THEN BEGIN A6GenSpl_L2Normal
  SAY @204026
  IF ~~ THEN GOTO A6GenSpl_L2Continue
END

IF ~GlobalGT("A6GenSpl2","LOCALS",0) GlobalLT("A6GenSpl2","LOCALS",6)~ THEN BEGIN A6GenSpl_L2Continue
  SAY @204003
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl2Blur","LOCALS",0)~ THEN REPLY @204004 DO ~ReallyForceSpellRES("A6SPW201",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Blur","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl2DetectEvil","LOCALS",0)~ THEN REPLY @204005 DO ~ReallyForceSpellRES("A6SPW202",LastTalkedToBy()) IncrementGlobal("A6GenSpl2DetectEvil","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl2DetectInvis","LOCALS",0)~ THEN REPLY @204006 DO ~ReallyForceSpellRES("A6SPW203",LastTalkedToBy()) IncrementGlobal("A6GenSpl2DetectInvis","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl2Horror","LOCALS",0)~ THEN REPLY @204007 DO ~ReallyForceSpellRES("A6SPW205",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Horror","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl2Invisibility","LOCALS",0)~ THEN REPLY @204008 DO ~ReallyForceSpellRES("A6SPW206",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Invisibility","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl2Knock","LOCALS",0)~ THEN REPLY @204009 DO ~ReallyForceSpellRES("A6SPW207",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Knock","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl2KnowAlign","LOCALS",0)~ THEN REPLY @204010 DO ~ReallyForceSpellRES("A6SPW208",LastTalkedToBy()) IncrementGlobal("A6GenSpl2KnowAlign","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl2Luck","LOCALS",0)~ THEN REPLY @204011 DO ~ReallyForceSpellRES("A6SPW209",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Luck","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl2ResistFear","LOCALS",0)~ THEN REPLY @204012 DO ~ReallyForceSpellRES("A6SPW210",LastTalkedToBy()) IncrementGlobal("A6GenSpl2ResistFear","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl2MelfAcidArrow","LOCALS",0)~ THEN REPLY @204013 DO ~ReallyForceSpellRES("A6SPW211",LastTalkedToBy()) IncrementGlobal("A6GenSpl2MelfAcidArrow","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl2MirrorImage","LOCALS",0)~ THEN REPLY @204014 DO ~ReallyForceSpellRES("A6SPW212",LastTalkedToBy()) IncrementGlobal("A6GenSpl2MirrorImage","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl2StinkingCloud","LOCALS",0)~ THEN REPLY @204015 DO ~ReallyForceSpellRES("A6SPW213",LastTalkedToBy()) IncrementGlobal("A6GenSpl2StinkingCloud","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl2Strength","LOCALS",0)~ THEN REPLY @204016 DO ~ReallyForceSpellRES("A6SPW214",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Strength","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl2Web","LOCALS",0)~ THEN REPLY @204017 DO ~ReallyForceSpellRES("A6SPW215",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Web","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl2Agannazar","LOCALS",0)~ THEN REPLY @204018 DO ~ReallyForceSpellRES("A6SPW217",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Agannazar","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl2GhoulTouch","LOCALS",0)~ THEN REPLY @204019 DO ~ReallyForceSpellRES("A6SPW218",LastTalkedToBy()) IncrementGlobal("A6GenSpl2GhoulTouch","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl2Vocalize","LOCALS",0)~ THEN REPLY @204020 DO ~ReallyForceSpellRES("A6SPW219",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Vocalize","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl2PWSleep","LOCALS",0)~ THEN REPLY @204021 DO ~ReallyForceSpellRES("A6SPW220",LastTalkedToBy()) IncrementGlobal("A6GenSpl2PWSleep","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl2RayEnfeeble","LOCALS",0)~ THEN REPLY @204022 DO ~ReallyForceSpellRES("A6SPW221",LastTalkedToBy()) IncrementGlobal("A6GenSpl2RayEnfeeble","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl2Deafness","LOCALS",0)~ THEN REPLY @204024 DO ~ReallyForceSpellRES("A6SPW223",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Deafness","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl2Glitterdust","LOCALS",0)~ THEN REPLY @204025 DO ~ReallyForceSpellRES("A6SPW224",LastTalkedToBy()) IncrementGlobal("A6GenSpl2Glitterdust","LOCALS",1) IncrementGlobal("A6GenSpl2","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
END

IF ~Global("A6GenSpl2","LOCALS",6) Global("A6GenSpl3","LOCALS",-1)~ THEN BEGIN A6GenSpl_L3Special
  SAY @204027
    =
  @204028
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl3Clairvoyance","LOCALS",0)~ THEN REPLY @204029 DO ~ReallyForceSpellRES("A6SPW301",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Clairvoyance","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3RemoveMagic","LOCALS",0)~ THEN REPLY @204030 DO ~ReallyForceSpellRES("A6SPW302",LastTalkedToBy()) IncrementGlobal("A6GenSpl3RemoveMagic","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl3FlameArrow","LOCALS",0)~ THEN REPLY @204031 DO ~ReallyForceSpellRES("A6SPW303",LastTalkedToBy()) IncrementGlobal("A6GenSpl3FlameArrow","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl3Fireball","LOCALS",0)~ THEN REPLY @204032 DO ~ReallyForceSpellRES("A6SPW304",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Fireball","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3Haste","LOCALS",0)~ THEN REPLY @204033 DO ~ReallyForceSpellRES("A6SPW305",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Haste","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl3HoldPerson","LOCALS",0)~ THEN REPLY @204034 DO ~ReallyForceSpellRES("A6SPW306",LastTalkedToBy()) IncrementGlobal("A6GenSpl3HoldPerson","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl3Invis10Radius","LOCALS",0)~ THEN REPLY @204035 DO ~ReallyForceSpellRES("A6SPW307",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Invis10Radius","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl3LightningBolt","LOCALS",0)~ THEN REPLY @204036 DO ~ReallyForceSpellRES("A6SPW308",LastTalkedToBy()) IncrementGlobal("A6GenSpl3LightningBolt","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl3MonsterSummon1","LOCALS",0)~ THEN REPLY @204037 DO ~ReallyForceSpellRES("A6SPW309",LastTalkedToBy()) IncrementGlobal("A6GenSpl3MonsterSummon1","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3NonDetection","LOCALS",0)~ THEN REPLY @204038 DO ~ReallyForceSpellRES("A6SPW310",LastTalkedToBy()) IncrementGlobal("A6GenSpl3NonDetection","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3ProtNormalMissiles","LOCALS",0)~ THEN REPLY @204039 DO ~ReallyForceSpellRES("A6SPW311",LastTalkedToBy()) IncrementGlobal("A6GenSpl3ProtNormalMissiles","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3Slow","LOCALS",0)~ THEN REPLY @204040 DO ~ReallyForceSpellRES("A6SPW312",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Slow","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl3SkullTrap","LOCALS",0)~ THEN REPLY @204041 DO ~ReallyForceSpellRES("A6SPW313",LastTalkedToBy()) IncrementGlobal("A6GenSpl3SkullTrap","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl3VampiricTouch","LOCALS",0)~ THEN REPLY @204042 DO ~ReallyForceSpellRES("A6SPW314",LastTalkedToBy()) IncrementGlobal("A6GenSpl3VampiricTouch","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl3DireCharm","LOCALS",0)~ THEN REPLY @204043 DO ~ReallyForceSpellRES("A6SPW316",LastTalkedToBy()) IncrementGlobal("A6GenSpl3DireCharm","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl3GhostArmor","LOCALS",0)~ THEN REPLY @204044 DO ~ReallyForceSpellRES("A6SPW317",LastTalkedToBy()) IncrementGlobal("A6GenSpl3GhostArmor","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3MinorSpellDeflection","LOCALS",0)~ THEN REPLY @204045 DO ~ReallyForceSpellRES("A6SPW318",LastTalkedToBy()) IncrementGlobal("A6GenSpl3MinorSpellDeflection","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3ProtFromFire","LOCALS",0)~ THEN REPLY @204046 DO ~ReallyForceSpellRES("A6SPW319",LastTalkedToBy()) IncrementGlobal("A6GenSpl3ProtFromFire","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3ProtFromCold","LOCALS",0)~ THEN REPLY @204047 DO ~ReallyForceSpellRES("A6SPW320",LastTalkedToBy()) IncrementGlobal("A6GenSpl3ProtFromCold","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3SpellThrust","LOCALS",0)~ THEN REPLY @204048 DO ~ReallyForceSpellRES("A6SPW321",LastTalkedToBy()) IncrementGlobal("A6GenSpl3SpellThrust","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl3DetectIllusion","LOCALS",0)~ THEN REPLY @204049 DO ~ReallyForceSpellRES("A6SPW322",LastTalkedToBy()) IncrementGlobal("A6GenSpl3DetectIllusion","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl3HoldUndead","LOCALS",0)~ THEN REPLY @204050 DO ~ReallyForceSpellRES("A6SPW324",LastTalkedToBy()) IncrementGlobal("A6GenSpl3HoldUndead","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl3MelfMinuteMeteors","LOCALS",0)~ THEN REPLY @204051 DO ~ReallyForceSpellRES("A6SPW325",LastTalkedToBy()) IncrementGlobal("A6GenSpl3MelfMinuteMeteors","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3DispelMagic","LOCALS",0)~ THEN REPLY @204052 DO ~ReallyForceSpellRES("A6SPW326",LastTalkedToBy()) IncrementGlobal("A6GenSpl3DispelMagic","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
END

IF ~Global("A6GenSpl2","LOCALS",6) Global("A6GenSpl3","LOCALS",0)~ THEN BEGIN A6GenSpl_L3Normal
  SAY @204053
  IF ~~ THEN GOTO A6GenSpl_L3Continue
END

IF ~Global("A6GenSpl2","LOCALS",6) GlobalGT("A6GenSpl3","LOCALS",0) GlobalLT("A6GenSpl3","LOCALS",5)~ THEN BEGIN A6GenSpl_L3Continue
  SAY @204028
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl3Clairvoyance","LOCALS",0)~ THEN REPLY @204029 DO ~ReallyForceSpellRES("A6SPW301",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Clairvoyance","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3RemoveMagic","LOCALS",0)~ THEN REPLY @204030 DO ~ReallyForceSpellRES("A6SPW302",LastTalkedToBy()) IncrementGlobal("A6GenSpl3RemoveMagic","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl3FlameArrow","LOCALS",0)~ THEN REPLY @204031 DO ~ReallyForceSpellRES("A6SPW303",LastTalkedToBy()) IncrementGlobal("A6GenSpl3FlameArrow","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl3Fireball","LOCALS",0)~ THEN REPLY @204032 DO ~ReallyForceSpellRES("A6SPW304",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Fireball","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3Haste","LOCALS",0)~ THEN REPLY @204033 DO ~ReallyForceSpellRES("A6SPW305",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Haste","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl3HoldPerson","LOCALS",0)~ THEN REPLY @204034 DO ~ReallyForceSpellRES("A6SPW306",LastTalkedToBy()) IncrementGlobal("A6GenSpl3HoldPerson","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl3Invis10Radius","LOCALS",0)~ THEN REPLY @204035 DO ~ReallyForceSpellRES("A6SPW307",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Invis10Radius","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl3LightningBolt","LOCALS",0)~ THEN REPLY @204036 DO ~ReallyForceSpellRES("A6SPW308",LastTalkedToBy()) IncrementGlobal("A6GenSpl3LightningBolt","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl3MonsterSummon1","LOCALS",0)~ THEN REPLY @204037 DO ~ReallyForceSpellRES("A6SPW309",LastTalkedToBy()) IncrementGlobal("A6GenSpl3MonsterSummon1","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3NonDetection","LOCALS",0)~ THEN REPLY @204038 DO ~ReallyForceSpellRES("A6SPW310",LastTalkedToBy()) IncrementGlobal("A6GenSpl3NonDetection","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3ProtNormalMissiles","LOCALS",0)~ THEN REPLY @204039 DO ~ReallyForceSpellRES("A6SPW311",LastTalkedToBy()) IncrementGlobal("A6GenSpl3ProtNormalMissiles","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl3Slow","LOCALS",0)~ THEN REPLY @204040 DO ~ReallyForceSpellRES("A6SPW312",LastTalkedToBy()) IncrementGlobal("A6GenSpl3Slow","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl3SkullTrap","LOCALS",0)~ THEN REPLY @204041 DO ~ReallyForceSpellRES("A6SPW313",LastTalkedToBy()) IncrementGlobal("A6GenSpl3SkullTrap","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl3VampiricTouch","LOCALS",0)~ THEN REPLY @204042 DO ~ReallyForceSpellRES("A6SPW314",LastTalkedToBy()) IncrementGlobal("A6GenSpl3VampiricTouch","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl3DireCharm","LOCALS",0)~ THEN REPLY @204043 DO ~ReallyForceSpellRES("A6SPW316",LastTalkedToBy()) IncrementGlobal("A6GenSpl3DireCharm","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl3GhostArmor","LOCALS",0)~ THEN REPLY @204044 DO ~ReallyForceSpellRES("A6SPW317",LastTalkedToBy()) IncrementGlobal("A6GenSpl3GhostArmor","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3MinorSpellDeflection","LOCALS",0)~ THEN REPLY @204045 DO ~ReallyForceSpellRES("A6SPW318",LastTalkedToBy()) IncrementGlobal("A6GenSpl3MinorSpellDeflection","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3ProtFromFire","LOCALS",0)~ THEN REPLY @204046 DO ~ReallyForceSpellRES("A6SPW319",LastTalkedToBy()) IncrementGlobal("A6GenSpl3ProtFromFire","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3ProtFromCold","LOCALS",0)~ THEN REPLY @204047 DO ~ReallyForceSpellRES("A6SPW320",LastTalkedToBy()) IncrementGlobal("A6GenSpl3ProtFromCold","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3SpellThrust","LOCALS",0)~ THEN REPLY @204048 DO ~ReallyForceSpellRES("A6SPW321",LastTalkedToBy()) IncrementGlobal("A6GenSpl3SpellThrust","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl3DetectIllusion","LOCALS",0)~ THEN REPLY @204049 DO ~ReallyForceSpellRES("A6SPW322",LastTalkedToBy()) IncrementGlobal("A6GenSpl3DetectIllusion","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl3HoldUndead","LOCALS",0)~ THEN REPLY @204050 DO ~ReallyForceSpellRES("A6SPW324",LastTalkedToBy()) IncrementGlobal("A6GenSpl3HoldUndead","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl3MelfMinuteMeteors","LOCALS",0)~ THEN REPLY @204051 DO ~ReallyForceSpellRES("A6SPW325",LastTalkedToBy()) IncrementGlobal("A6GenSpl3MelfMinuteMeteors","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl3DispelMagic","LOCALS",0)~ THEN REPLY @204052 DO ~ReallyForceSpellRES("A6SPW326",LastTalkedToBy()) IncrementGlobal("A6GenSpl3DispelMagic","LOCALS",1) IncrementGlobal("A6GenSpl3","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
END

IF ~!Class(LastTalkedToBy(), FIGHTER_MAGE) 
	!Class(LastTalkedToBy(), FIGHTER_MAGE_THIEF) 
	!Class(LastTalkedToBy(), MAGE_THIEF) 
	!Class(LastTalkedToBy(), CLERIC_MAGE) 
	!Class(LastTalkedToBy(), FIGHTER_MAGE_CLERIC) 
	Global("A6GenSpl2","LOCALS",6) Global("A6GenSpl3","LOCALS",5) Global("A6GenSpl4","LOCALS",-1)~ THEN BEGIN A6GenSpl_L4Special
  SAY @204054
    =
  @204055
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl4Confusion","LOCALS",0)~ THEN REPLY @204056 DO ~ReallyForceSpellRES("A6SPW401",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Confusion","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl4FireShieldBlue","LOCALS",0)~ THEN REPLY @204057 DO ~ReallyForceSpellRES("A6SPW403",LastTalkedToBy()) IncrementGlobal("A6GenSpl4FireShieldBlue","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl4IceStorm","LOCALS",0)~ THEN REPLY @204058 DO ~ReallyForceSpellRES("A6SPW404",LastTalkedToBy()) IncrementGlobal("A6GenSpl4IceStorm","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl4ImprovedInvis","LOCALS",0)~ THEN REPLY @204059 DO ~ReallyForceSpellRES("A6SPW405",LastTalkedToBy()) IncrementGlobal("A6GenSpl4ImprovedInvis","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl4MinorGlobe","LOCALS",0)~ THEN REPLY @204060 DO ~ReallyForceSpellRES("A6SPW406",LastTalkedToBy()) IncrementGlobal("A6GenSpl4MinorGlobe","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl4MonsterSummon2","LOCALS",0)~ THEN REPLY @204061 DO ~ReallyForceSpellRES("A6SPW407",LastTalkedToBy()) IncrementGlobal("A6GenSpl4MonsterSummon2","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl4Stoneskin","LOCALS",0)~ THEN REPLY @204062 DO ~ReallyForceSpellRES("A6SPW408",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Stoneskin","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl4Contagion","LOCALS",0)~ THEN REPLY @204063 DO ~ReallyForceSpellRES("A6SPW409",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Contagion","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl4RemoveCurse","LOCALS",0)~ THEN REPLY @204064 DO ~ReallyForceSpellRES("A6SPW410",LastTalkedToBy()) IncrementGlobal("A6GenSpl4RemoveCurse","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl4Emotion","LOCALS",0)~ THEN REPLY @204065 DO ~ReallyForceSpellRES("A6SPW411",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Emotion","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl4GreaterMalison","LOCALS",0)~ THEN REPLY @204066 DO ~ReallyForceSpellRES("A6SPW412",LastTalkedToBy()) IncrementGlobal("A6GenSpl4GreaterMalison","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl4OtilukeResSphere","LOCALS",0)~ THEN REPLY @204067 DO ~ReallyForceSpellRES("A6SPW413",LastTalkedToBy()) IncrementGlobal("A6GenSpl4OtilukeResSphere","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl4SpiritArmor","LOCALS",0)~ THEN REPLY @204068 DO ~ReallyForceSpellRES("A6SPW414",LastTalkedToBy()) IncrementGlobal("A6GenSpl4SpiritArmor","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl4PolymorphOther","LOCALS",0)~ THEN REPLY @204069 DO ~ReallyForceSpellRES("A6SPW415",LastTalkedToBy()) IncrementGlobal("A6GenSpl4PolymorphOther","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl4PolymorphSelf","LOCALS",0)~ THEN REPLY @204070 DO ~ReallyForceSpellRES("A6SPW416",LastTalkedToBy()) IncrementGlobal("A6GenSpl4PolymorphSelf","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl4EnchantedWeapon","LOCALS",0)~ THEN REPLY @204071 DO ~ReallyForceSpellRES("A6SPW417",LastTalkedToBy()) IncrementGlobal("A6GenSpl4EnchantedWeapon","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl4FireShieldRed","LOCALS",0)~ THEN REPLY @204072 DO ~ReallyForceSpellRES("A6SPW418",LastTalkedToBy()) IncrementGlobal("A6GenSpl4FireShieldRed","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl4SecretWord","LOCALS",0)~ THEN REPLY @204073 DO ~ReallyForceSpellRES("A6SPW419",LastTalkedToBy()) IncrementGlobal("A6GenSpl4SecretWord","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl4MinorSequencer","LOCALS",0)~ THEN REPLY @204074 DO ~ReallyForceSpellRES("A6SPW420",LastTalkedToBy()) IncrementGlobal("A6GenSpl4MinorSequencer","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl4TeleportField","LOCALS",0)~ THEN REPLY @204075 DO ~ReallyForceSpellRES("A6SPW421",LastTalkedToBy()) IncrementGlobal("A6GenSpl4TeleportField","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl4SpiderSpawn","LOCALS",0)~ THEN REPLY @204076 DO ~ReallyForceSpellRES("A6SPW423",LastTalkedToBy()) IncrementGlobal("A6GenSpl4SpiderSpawn","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl4Farsight","LOCALS",0)~ THEN REPLY @204077 DO ~ReallyForceSpellRES("A6SPW424",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Farsight","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~OR(2) Kit(LastTalkedToBy(), 0) Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl4WizardEye","LOCALS",0)~ THEN REPLY @204078 DO ~ReallyForceSpellRES("A6SPW425",LastTalkedToBy()) IncrementGlobal("A6GenSpl4WizardEye","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
END

IF ~!Class(LastTalkedToBy(), FIGHTER_MAGE) 
	!Class(LastTalkedToBy(), FIGHTER_MAGE_THIEF) 
	!Class(LastTalkedToBy(), MAGE_THIEF) 
	!Class(LastTalkedToBy(), CLERIC_MAGE) 
	!Class(LastTalkedToBy(), FIGHTER_MAGE_CLERIC) 
	Global("A6GenSpl2","LOCALS",6) Global("A6GenSpl3","LOCALS",5) Global("A6GenSpl4","LOCALS",0)~ THEN BEGIN A6GenSpl_L4Normal
  SAY @204079
  IF ~~ THEN GOTO A6GenSpl_L4Continue
END

IF ~Global("A6GenSpl2","LOCALS",6) Global("A6GenSpl3","LOCALS",5) GlobalGT("A6GenSpl4","LOCALS",0) GlobalLT("A6GenSpl4","LOCALS",5)~ THEN BEGIN A6GenSpl_L4Continue
  SAY @204055
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl4Confusion","LOCALS",0)~ THEN REPLY @204056 DO ~ReallyForceSpellRES("A6SPW401",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Confusion","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl4FireShieldBlue","LOCALS",0)~ THEN REPLY @204057 DO ~ReallyForceSpellRES("A6SPW403",LastTalkedToBy()) IncrementGlobal("A6GenSpl4FireShieldBlue","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl4IceStorm","LOCALS",0)~ THEN REPLY @204058 DO ~ReallyForceSpellRES("A6SPW404",LastTalkedToBy()) IncrementGlobal("A6GenSpl4IceStorm","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_NECROMANCER) Global("A6GenSpl4ImprovedInvis","LOCALS",0)~ THEN REPLY @204059 DO ~ReallyForceSpellRES("A6SPW405",LastTalkedToBy()) IncrementGlobal("A6GenSpl4ImprovedInvis","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl4MinorGlobe","LOCALS",0)~ THEN REPLY @204060 DO ~ReallyForceSpellRES("A6SPW406",LastTalkedToBy()) IncrementGlobal("A6GenSpl4MinorGlobe","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl4MonsterSummon2","LOCALS",0)~ THEN REPLY @204061 DO ~ReallyForceSpellRES("A6SPW407",LastTalkedToBy()) IncrementGlobal("A6GenSpl4MonsterSummon2","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl4Stoneskin","LOCALS",0)~ THEN REPLY @204062 DO ~ReallyForceSpellRES("A6SPW408",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Stoneskin","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl4Contagion","LOCALS",0)~ THEN REPLY @204063 DO ~ReallyForceSpellRES("A6SPW409",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Contagion","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl4RemoveCurse","LOCALS",0)~ THEN REPLY @204064 DO ~ReallyForceSpellRES("A6SPW410",LastTalkedToBy()) IncrementGlobal("A6GenSpl4RemoveCurse","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl4Emotion","LOCALS",0)~ THEN REPLY @204065 DO ~ReallyForceSpellRES("A6SPW411",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Emotion","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl4GreaterMalison","LOCALS",0)~ THEN REPLY @204066 DO ~ReallyForceSpellRES("A6SPW412",LastTalkedToBy()) IncrementGlobal("A6GenSpl4GreaterMalison","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl4OtilukeResSphere","LOCALS",0)~ THEN REPLY @204067 DO ~ReallyForceSpellRES("A6SPW413",LastTalkedToBy()) IncrementGlobal("A6GenSpl4OtilukeResSphere","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ILLUSIONIST) Global("A6GenSpl4SpiritArmor","LOCALS",0)~ THEN REPLY @204068 DO ~ReallyForceSpellRES("A6SPW414",LastTalkedToBy()) IncrementGlobal("A6GenSpl4SpiritArmor","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl4PolymorphOther","LOCALS",0)~ THEN REPLY @204069 DO ~ReallyForceSpellRES("A6SPW415",LastTalkedToBy()) IncrementGlobal("A6GenSpl4PolymorphOther","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl4PolymorphSelf","LOCALS",0)~ THEN REPLY @204070 DO ~ReallyForceSpellRES("A6SPW416",LastTalkedToBy()) IncrementGlobal("A6GenSpl4PolymorphSelf","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_INVOKER) Global("A6GenSpl4EnchantedWeapon","LOCALS",0)~ THEN REPLY @204071 DO ~ReallyForceSpellRES("A6SPW417",LastTalkedToBy()) IncrementGlobal("A6GenSpl4EnchantedWeapon","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl4FireShieldRed","LOCALS",0)~ THEN REPLY @204072 DO ~ReallyForceSpellRES("A6SPW418",LastTalkedToBy()) IncrementGlobal("A6GenSpl4FireShieldRed","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_TRANSMUTER) Global("A6GenSpl4SecretWord","LOCALS",0)~ THEN REPLY @204073 DO ~ReallyForceSpellRES("A6SPW419",LastTalkedToBy()) IncrementGlobal("A6GenSpl4SecretWord","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ENCHANTER) Global("A6GenSpl4MinorSequencer","LOCALS",0)~ THEN REPLY @204074 DO ~ReallyForceSpellRES("A6SPW420",LastTalkedToBy()) IncrementGlobal("A6GenSpl4MinorSequencer","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) Global("A6GenSpl4TeleportField","LOCALS",0)~ THEN REPLY @204075 DO ~ReallyForceSpellRES("A6SPW421",LastTalkedToBy()) IncrementGlobal("A6GenSpl4TeleportField","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_DIVINER) Global("A6GenSpl4SpiderSpawn","LOCALS",0)~ THEN REPLY @204076 DO ~ReallyForceSpellRES("A6SPW423",LastTalkedToBy()) IncrementGlobal("A6GenSpl4SpiderSpawn","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl4Farsight","LOCALS",0)~ THEN REPLY @204077 DO ~ReallyForceSpellRES("A6SPW424",LastTalkedToBy()) IncrementGlobal("A6GenSpl4Farsight","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
  IF ~!Kit(LastTalkedToBy(), MAGESCHOOL_ABJURER) !Kit(LastTalkedToBy(), MAGESCHOOL_CONJURER) Global("A6GenSpl4WizardEye","LOCALS",0)~ THEN REPLY @204078 DO ~ReallyForceSpellRES("A6SPW425",LastTalkedToBy()) IncrementGlobal("A6GenSpl4WizardEye","LOCALS",1) IncrementGlobal("A6GenSpl4","LOCALS",1) StartDialogNoSet(LastTalkedToBy())~ EXIT
END

IF ~Global("A6GenSpl2","LOCALS",6) Global("A6GenSpl3","LOCALS",5) Global("A6GenSpl4","LOCALS",5)~ THEN BEGIN A6GenSpl_SingleComplete
  SAY @204080
  IF ~Global("A6GenSplDiffChange","LOCALS",1)~ THEN GOTO A6GenSpl_ResetDifficulty
  IF ~Global("A6GenSplDiffChange","LOCALS",0)~ THEN DO ~SetGlobal("BGImportIncomplete","AR0602",4) DestroySelf()~ EXIT
END

IF ~OR(5)
	Class(LastTalkedToBy(), FIGHTER_MAGE) 
	Class(LastTalkedToBy(), FIGHTER_MAGE_THIEF) 
	Class(LastTalkedToBy(), MAGE_THIEF) 
	Class(LastTalkedToBy(), CLERIC_MAGE) 
	Class(LastTalkedToBy(), FIGHTER_MAGE_CLERIC) 
	Global("A6GenSpl2","LOCALS",6) Global("A6GenSpl3","LOCALS",5) OR(2) Global("A6GenSpl4","LOCALS",-1) Global("A6GenSpl4","LOCALS",0)~ THEN BEGIN A6GenSpl_MultiComplete
  SAY @204080
  IF ~Global("A6GenSplDiffChange","LOCALS",1)~ THEN GOTO A6GenSpl_ResetDifficulty
  IF ~Global("A6GenSplDiffChange","LOCALS",0)~ THEN DO ~SetGlobal("BGImportIncomplete","AR0602",4) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN A6GenSpl_ResetDifficulty
  SAY @204081
  IF ~~ THEN DO ~SetGlobal("BGImportIncomplete","AR0602",4) DestroySelf()~ EXIT
END