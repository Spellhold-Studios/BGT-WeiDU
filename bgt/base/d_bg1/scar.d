BEGIN ~scar~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 1
  IF ~~ THEN REPLY @18 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @19
  IF ~~ THEN DO ~SetGlobal("ScarMission","GLOBAL",8)
EscapeArea()~ UNSOLVED_JOURNAL @310125 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 3
  IF ~~ THEN REPLY @22 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @23
  IF ~~ THEN DO ~SetGlobal("ScarMission","GLOBAL",8)
EscapeArea()~ UNSOLVED_JOURNAL @310125 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 6
  IF ~~ THEN REPLY @26 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @27
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @28
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @29
  IF ~~ THEN DO ~SetGlobal("TalkedToScar","GLOBAL",1)
SetGlobal("ScarMission","GLOBAL",1)
SetGlobal("CheckedSevenSuns","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @310112 EXIT
END

IF ~Global("ScarMission","GLOBAL",1)~ THEN BEGIN 8
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 9
  IF ~Global("CheckedSevenSuns","GLOBAL",2)~ THEN REPLY @33 GOTO 10
  IF ~GlobalGT("KilledDopple","GLOBAL",4)~ THEN REPLY @34 GOTO 13
  IF ~~ THEN REPLY @11781 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @35
  IF ~~ THEN DO ~SetGlobal("ScarMission","GLOBAL",5)
AddJournalEntry(@310116,QUEST_DONE)
EraseJournalEntry(@310112)
EraseJournalEntry(@310113)
EraseJournalEntry(@310349)
EraseJournalEntry(@311349)
EraseJournalEntry(@310356)
EraseJournalEntry(@310114)
EscapeArea()~ UNSOLVED_JOURNAL @310126 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @36
  IF ~~ THEN REPLY @37 DO ~
EraseJournalEntry(@310112)
EraseJournalEntry(@310113)
EraseJournalEntry(@310349)
EraseJournalEntry(@311349)
EraseJournalEntry(@310356)
EraseJournalEntry(@310114)~ SOLVED_JOURNAL @310117 GOTO 11
  IF ~~ THEN REPLY @38 UNSOLVED_JOURNAL @310113 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @39
  IF ~~ THEN DO ~GiveGoldForce(2000)
AddexperienceParty(5000)
SetGlobal("ScarMission","GLOBAL",5)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @40
  IF ~~ THEN DO ~GiveGoldForce(2000)
AddexperienceParty(5000)
SetGlobal("ScarMission","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @41
  IF ~~ THEN DO ~GiveGoldForce(4000)
AddexperienceParty(5000)
EraseJournalEntry(@310112)
EraseJournalEntry(@310113)
EraseJournalEntry(@310349)
EraseJournalEntry(@311349)
EraseJournalEntry(@310356)
EraseJournalEntry(@310114)~ SOLVED_JOURNAL @310115 GOTO 26
END

IF ~Global("ScarMission","GLOBAL",2)~ THEN BEGIN 14
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 15
  IF ~Global("KilledDopple","GLOBAL",5)
!Dead("Jhasso")~ THEN REPLY @44 GOTO 16
  IF ~Global("KilledDopple","GLOBAL",5)
Dead("Jhasso")~ THEN REPLY @45 GOTO 17
END

IF ~~ THEN BEGIN 15
  SAY @46
  IF ~~ THEN DO ~GiveGoldForce(2000)
EraseJournalEntry(@310112)
EraseJournalEntry(@310113)
EraseJournalEntry(@310349)
EraseJournalEntry(@311349)
EraseJournalEntry(@310356)
EraseJournalEntry(@310114)~ SOLVED_JOURNAL @310118 GOTO 26
END

IF ~~ THEN BEGIN 16
  SAY @47
  IF ~~ THEN DO ~AddexperienceParty(2000)
ReputationInc(2)
GiveGoldForce(4000)
EraseJournalEntry(@310112)
EraseJournalEntry(@310113)
EraseJournalEntry(@310349)
EraseJournalEntry(@311349)
EraseJournalEntry(@310356)
EraseJournalEntry(@310114)~ SOLVED_JOURNAL @310115 GOTO 26
END

IF ~~ THEN BEGIN 17
  SAY @48
  IF ~~ THEN DO ~AddJournalEntry(@310119,QUEST_DONE)
EraseJournalEntry(@310112)
EraseJournalEntry(@310113)
EraseJournalEntry(@310349)
EraseJournalEntry(@311349)
EraseJournalEntry(@310356)
EraseJournalEntry(@310114)~ GOTO 26
END

IF ~Global("ScarMission","GLOBAL",5)~ THEN BEGIN 18
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 20
  IF ~~ THEN REPLY @51 GOTO 22
END

IF ~Global("ScarMission","GLOBAL",8)~ THEN BEGIN 19
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 20
  IF ~~ THEN REPLY @54 GOTO 22
END

IF ~~ THEN BEGIN 20
  SAY @55
  IF ~~ THEN REPLY @56 GOTO 22
  IF ~~ THEN REPLY @57 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @58
  IF ~~ THEN DO ~SetGlobal("ScarMission","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @59
  IF ~~ THEN DO ~SetGlobal("ScarMission","GLOBAL",99)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Scarcut")~ EXIT
END

IF ~Global("ScarMission","GLOBAL",6)~ THEN BEGIN 23
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 24
  IF ~~ THEN REPLY @63 GOTO 22
END

IF ~~ THEN BEGIN 24
  SAY @64
  IF ~~ THEN EXIT
END

IF ~Global("ScarMission","Global",99)~ THEN BEGIN 25
  SAY @65
  IF ~~ THEN EXTERN ~DELTAN~ 0
END

IF ~~ THEN BEGIN 26
  SAY @66
  IF ~~ THEN REPLY @67 GOTO 28
  IF ~~ THEN REPLY @68 GOTO 29
END

IF ~~ THEN BEGIN 27
  SAY @69
  IF ~~ THEN REPLY @70 GOTO 28
  IF ~~ THEN REPLY @71 GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY @72
  IF ~~ THEN DO ~SetGlobal("ScarMission","GLOBAL",5)
EscapeArea()~ UNSOLVED_JOURNAL @310126 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @73
  IF ~~ THEN REPLY @74 DO ~SetGlobal("ScarMission","GLOBAL",5)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY @75 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @76
  IF ~~ THEN DO ~GivePartyGold(300)
SetGlobal("ScarMission","GLOBAL",3)
SetGlobalTimer("Scar","GLOBAL",10)~ UNSOLVED_JOURNAL @310120 EXIT
END

IF ~Global("ScarMission","GLOBAL",3)~ THEN BEGIN 31
  SAY @77
  IF ~~ THEN REPLY @78 DO ~SetGlobal("ScarMission","GLOBAL",4)~ GOTO 36
  IF ~Dead("SewerOgre")~ THEN REPLY @79 GOTO 32
  IF ~Dead("SewerOgre")~ THEN REPLY @80 GOTO 35
  IF ~~ THEN REPLY @1067 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @81
  IF ~~ THEN REPLY @82 GOTO 33
  IF ~PartyHasItem("RING19")~ THEN REPLY @83 GOTO 34
END

IF ~~ THEN BEGIN 33
  SAY @84
  IF ~~ THEN DO ~GiveGoldForce(1000)
AddexperienceParty(2000)
SetGlobal("ScarMission","GLOBAL",5)
EraseJournalEntry(@310120)
AddJournalEntry(@310122,QUEST_DONE)
EscapeArea()~ UNSOLVED_JOURNAL @310126 EXIT
END

IF ~~ THEN BEGIN 34
  SAY @85
  IF ~~ THEN DO ~TakePartyItem("RING19")
GiveGoldForce(3000)
AddexperienceParty(3000)
SetGlobal("ScarMission","GLOBAL",5)
AddJournalEntry(@310123,QUEST_DONE)
EraseJournalEntry(@310120)
EscapeArea()~ UNSOLVED_JOURNAL @310126 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @86
  IF ~~ THEN DO ~GiveGoldForce(500)
AddexperienceParty(2500)
SetGlobal("ScarMission","GLOBAL",5)
AddJournalEntry(@310124,QUEST_DONE)
EraseJournalEntry(@310120)
EscapeArea()~ UNSOLVED_JOURNAL @310126 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @87
  IF ~~ THEN DO ~EraseJournalEntry(@310120)~ SOLVED_JOURNAL @310121 EXIT
END

IF ~Global("ScarMission","GLOBAL",4)
GlobalTimerExpired("Scar","GLOBAL")~ THEN BEGIN 37
  SAY @88
  IF ~~ THEN DO ~SetGlobal("ScarMission","GLOBAL",5)
EscapeArea()~ UNSOLVED_JOURNAL @310126 EXIT
END

IF ~~ THEN BEGIN 38
  SAY @89
  IF ~~ THEN DO ~SetGlobal("ScarMission","GLOBAL",5)
EscapeArea()~ UNSOLVED_JOURNAL @310126 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @266
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40
  SAY @17670
  IF ~~ THEN REPLY @17671 GOTO 41
  IF ~~ THEN REPLY @17672 EXTERN ~DELTAN~ 6
END

IF ~~ THEN BEGIN 41
  SAY @17673
  IF ~~ THEN DO ~Kill(Player1)
Kill(Player1)
Kill(Player2)
Kill(Player3)
Kill(Player4)
Kill(Player5)
Kill(Player6)~ EXIT
END
