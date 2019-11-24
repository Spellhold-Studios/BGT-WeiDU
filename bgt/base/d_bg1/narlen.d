BEGIN ~narlen~

IF WEIGHT #2 ~Global("TalkedToNarlen","GLOBAL",0)
!InParty([0.0.0.THIEF])
!InParty([0.0.0.FIGHTER_THIEF])
!InParty([0.0.0.FIGHTER_MAGE_THIEF])
!InParty([0.0.0.MAGE_THIEF])
!InParty([0.0.0.CLERIC_THIEF])~ THEN BEGIN 0
  SAY @2881
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~Global("TalkedToNarlen","GLOBAL",0)~ THEN BEGIN 1
  SAY @2882
  IF ~~ THEN REPLY @2883 DO ~SetGlobal("TalkedToNarlen","GLOBAL",1)
SetGlobal("TalkedToThief","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @2884 DO ~SetGlobal("TalkedToNarlen","GLOBAL",1)~ GOTO 4
  IF ~Global("HelpAlatos","GLOBAL",1)~ THEN REPLY @2885 DO ~SetGlobal("TalkedToNarlen","GLOBAL",1)~ GOTO 5
  IF ~Global("HelpAlatos","GLOBAL",1)~ THEN REPLY @2886 DO ~SetGlobal("TalkedToNarlen","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @2887
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310249 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2888
  IF ~~ THEN REPLY @2925 GOTO 2
  IF ~~ THEN REPLY @2926 GOTO 4
  IF ~Global("HelpAlatos","GLOBAL",1)~ THEN REPLY @2927 GOTO 5
  IF ~Global("HelpAlatos","GLOBAL",1)~ THEN REPLY @2928 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @2889
  IF ~~ THEN REPLY @2929 GOTO 8
  IF ~~ THEN REPLY @2930 GOTO 6
  IF ~~ THEN REPLY @2931 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @2894
  IF ~~ THEN REPLY @2932 GOTO 8
  IF ~~ THEN REPLY @2933 GOTO 6
  IF ~~ THEN REPLY @2934 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @2895
  IF ~~ THEN REPLY @2935 GOTO 8
  IF ~~ THEN REPLY @2936 GOTO 7
  IF ~~ THEN REPLY @2937 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @2896
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2897
  IF ~~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @310250 EXIT
END

IF WEIGHT #5 ~Global("NarlenMove","GLOBAL",1)~ THEN BEGIN 9
  SAY @2899
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Global("NarlenMove","GLOBAL",1)
!See([PC.0.0.MAGE])
!See([PC.0.0.FIGHTER])
!See([PC.0.0.CLERIC])
!See([PC.0.0.BARD])
!See([PC.0.0.PALADIN])
!See([PC.0.0.FIGHTER_MAGE])
!See([PC.0.0.FIGHTER_CLERIC])
!See([PC.0.0.DRUID])
!See([PC.0.0.RANGER])
!See([PC.0.0.CLERIC_MAGE])
!See([PC.0.0.FIGHTER_DRUID])
!See([PC.0.0.FIGHTER_MAGE_CLERIC])
!See([PC.0.0.CLERIC_RANGER])~ THEN BEGIN 10
  SAY @2900
  IF ~~ THEN DO ~MoveViewPoint([376.2193],4)
ActionOverride(LastTalkedToBy,MoveToPoint([376.2193]))
MoveToPoint([376.2193])
StartCutSceneMode()
SetGlobal("NarlenMove","GLOBAL",2)
SetGlobalTimer("NarlenSteal","GLOBAL",20)
EndCutSceneMode()
DestroySelf()~ EXIT
END

IF WEIGHT #6 ~Global("NarlenMove","GLOBAL",3)
Dead("Watchm")~ THEN BEGIN 11
  SAY @2901
  IF ~~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",10)
GiveGoldForce(300)
EraseJournalEntry(@310249)
EraseJournalEntry(@310250)
EscapeArea()~ SOLVED_JOURNAL @310251 EXIT
END

IF WEIGHT #7 ~Global("NarlenMove","GLOBAL",3)
Global("HostileWatch","GLOBAL",0)
!Dead("Watchm")~ THEN BEGIN 12
  SAY @2902
  IF ~~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",10)
EraseJournalEntry(@310249)
EraseJournalEntry(@310250)
Attack([PC.0.0.THIEF])~ SOLVED_JOURNAL @310252 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @2903
  IF ~~ THEN DO ~Shout(2)
EscapeArea()~ EXIT
END

IF WEIGHT #8 ~Global("NarlenMove","GLOBAL",3)
Global("HostileWatch","GLOBAL",1)
!Dead("Watchm")~ THEN BEGIN 14
  SAY @2904
  IF ~~ THEN REPLY @2975 GOTO 15
  IF ~~ THEN REPLY @2976 GOTO 17
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @2977 GOTO 16
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @2983 GOTO 32
END

IF ~~ THEN BEGIN 15
  SAY @2905
  IF ~~ THEN REPLY @2978 GOTO 17
  IF ~~ THEN REPLY @2979 GOTO 16
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @2980 GOTO 16
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @2981 GOTO 32
END

IF ~~ THEN BEGIN 16
  SAY @2906
  IF ~~ THEN DO ~GiveGoldForce(100)
SetGlobal("NarlenMove","GLOBAL",10)
EraseJournalEntry(@310249)
EraseJournalEntry(@310250)
EscapeArea()~ SOLVED_JOURNAL @310253 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @2907
  IF ~~ THEN DO ~GiveGoldForce(100)
SetGlobal("NarlenMove","GLOBAL",4)
EraseJournalEntry(@310249)
EraseJournalEntry(@310250)
EscapeArea()~ UNSOLVED_JOURNAL @310254 EXIT
END

IF WEIGHT #10 ~Global("NarlenMove","GLOBAL",4)~ THEN BEGIN 18
  SAY @2908
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~Global("NarlenMove","GLOBAL",4)
!See([PC.0.0.MAGE])
!See([PC.0.0.FIGHTER])
!See([PC.0.0.CLERIC])
!See([PC.0.0.BARD])
!See([PC.0.0.PALADIN])
!See([PC.0.0.FIGHTER_MAGE])
!See([PC.0.0.FIGHTER_CLERIC])
!See([PC.0.0.DRUID])
!See([PC.0.0.RANGER])
!See([PC.0.0.CLERIC_MAGE])
!See([PC.0.0.FIGHTER_DRUID])
!See([PC.0.0.FIGHTER_MAGE_CLERIC])
!See([PC.0.0.CLERIC_RANGER])~ THEN BEGIN 19
  SAY @2909
  IF ~~ THEN DO ~MoveToPoint([761.1228])
OpenDoor("DOOR1312")
SetGlobal("NarlenMove","GLOBAL",5)
DestroySelf()~ UNSOLVED_JOURNAL @310255 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @2912
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY @2915
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @2916
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~Global("NarlenMove","GLOBAL",5)
!PartyHasItem("BGMISC45")~ THEN BEGIN 23
  SAY @2917
  IF ~~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",6)
EraseJournalEntry(@310254)
EraseJournalEntry(@310255)
EscapeArea()~ SOLVED_JOURNAL @310256 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @2918
  IF ~~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",6)
TakePartyItem("BGMISC45")
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
EraseJournalEntry(@310254)
EraseJournalEntry(@310255)~ SOLVED_JOURNAL @310257 EXIT
END

IF WEIGHT #12 ~Global("NarlenMove","GLOBAL",5)
PartyHasItem("BGMISC45")~ THEN BEGIN 25
  SAY @2919
  IF ~~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",7)
TakePartyItem("BGMISC45")
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
EraseJournalEntry(@310254)
EraseJournalEntry(@310255)~ SOLVED_JOURNAL @310257 EXIT
END

IF WEIGHT #13 ~Global("NarlenMove","GLOBAL",8)~ THEN BEGIN 26
  SAY @2921
  IF ~~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",9)~ EXTERN ~RESAR~ 4
END

IF ~~ THEN BEGIN 27
  SAY @2922
  IF ~~ THEN EXTERN ~ALATOS~ 16
END

IF ~~ THEN BEGIN 28
  SAY @2923
  IF ~~ THEN EXTERN ~ALATOS~ 17
END

IF ~~ THEN BEGIN 29
  SAY @2924
  IF ~~ THEN DO ~EraseJournalEntry(@310261)
EraseJournalEntry(@310386)
EscapeArea()~ SOLVED_JOURNAL @310264 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @2938
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY @2970
  IF ~~ THEN REPLY @2971 GOTO 2
  IF ~~ THEN REPLY @2972 GOTO 4
  IF ~~ THEN REPLY @2973 GOTO 5
  IF ~~ THEN REPLY @2974 GOTO 7
END

IF ~~ THEN BEGIN 32
  SAY @2982
  IF ~~ THEN DO ~GiveGoldForce(100)
SetGlobal("NarlenMove","GLOBAL",10)
EraseJournalEntry(@310254)
EraseJournalEntry(@310255)~ SOLVED_JOURNAL @310258 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 33
  SAY @6472
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY @9071
  IF ~~ THEN EXIT
END
