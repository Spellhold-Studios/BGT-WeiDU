BEGIN ~pheirk~

IF WEIGHT #0 ~Global("StartedPheirkasQuest","GLOBAL",0)
!InParty([0.0.0.THIEF_ALL])
!InParty([0.0.0.FIGHTER_THIEF])
!InParty([0.0.0.MAGE_THIEF])
!InParty([0.0.0.FIGHTER_MAGE_THIEF])
!InParty([0.0.0.CLERIC_THIEF])~ THEN BEGIN 0
  SAY @15107
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~Global("StartedPheirkasQuest","GLOBAL",0)~ THEN BEGIN 1
  SAY @15108
  IF ~~ THEN DO ~SetGlobal("StartedPheirkasQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @310160 EXIT
END

IF WEIGHT #5 ~Global("StartedPheirkasQuest","GLOBAL",1)
Global("HelpPheirkas","GLOBAL",0)~ THEN BEGIN 2
  SAY @15109
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
PartyHasItem("CLCK08")~ THEN BEGIN 3
  SAY @15110
  IF ~~ THEN DO ~SetGlobal("HelpPheirkas","GLOBAL",1)
TakePartyItem("CLCK08")
AddexperienceParty(200)
GiveGoldForce(150)
EraseJournalEntry(@310160)~ SOLVED_JOURNAL @310161 EXIT
END

IF WEIGHT #3 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
PartyHasItem("CLCK08")~ THEN BEGIN 4
  SAY @15111
  IF ~~ THEN DO ~SetGlobal("HelpPheirkas","GLOBAL",1)
TakePartyItem("CLCK08")
AddexperienceParty(300)
GivePartyGold(200)
EraseJournalEntry(@310160)~ SOLVED_JOURNAL @310161 EXIT
END

IF WEIGHT #4 ~false()~ THEN BEGIN 5
  SAY @15112
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~True()~ THEN BEGIN 6
  SAY @15113
  IF ~~ THEN EXIT
END
