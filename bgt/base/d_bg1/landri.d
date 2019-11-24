BEGIN ~landri~

IF WEIGHT #2 ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @14903
  IF ~~ THEN DO ~SetGlobal("HelpLandrin","GLOBAL",1)~ UNSOLVED_JOURNAL @310021 EXIT
END

IF WEIGHT #3 ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @14904
  IF ~~ THEN DO ~SetGlobal("HelpLandrin","GLOBAL",1)~ UNSOLVED_JOURNAL @310022 EXIT
END

IF WEIGHT #4 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @14906
  IF ~~ THEN DO ~SetGlobal("HelpLandrin","GLOBAL",1)
GiveItem("POTN20",LastTalkedToBy)
GiveItem("POTN20",LastTalkedToBy)
GiveItem("POTN20",LastTalkedToBy)
GiveItem("POTN20",LastTalkedToBy)
GiveItem("POTN20",LastTalkedToBy)
GiveItem("POTN20",LastTalkedToBy)~ UNSOLVED_JOURNAL @310023 EXIT
END

IF WEIGHT #8 ~PartyHasItem("MISC61")
!Global("HelpLandrin","GLOBAL",4)~ THEN BEGIN 3
  SAY @14907
  IF ~~ THEN DO ~AddexperienceParty(300)
GivePartyGold(75)
TakePartyItem("MISC61")
IncrementGlobal("HelpLandrin","GLOBAL",1)~ SOLVED_JOURNAL @310024 EXIT
END

IF WEIGHT #7 ~PartyHasItem("MISC60")
!Global("HelpLandrin","GLOBAL",4)~ THEN BEGIN 4
  SAY @14908
  IF ~~ THEN DO ~AddexperienceParty(200)
GivePartyGold(100)
TakePartyItem("MISC60")
IncrementGlobal("HelpLandrin","GLOBAL",1)~ SOLVED_JOURNAL @310025 EXIT
END

IF WEIGHT #6 ~PartyHasItem("BOOT06")
!Global("HelpLandrin","GLOBAL",4)~ THEN BEGIN 5
  SAY @14909
  IF ~~ THEN DO ~AddexperienceParty(300)
GivePartyGold(120)
TakePartyItem("BOOT06")
IncrementGlobal("HelpLandrin","GLOBAL",1)~ SOLVED_JOURNAL @310026 EXIT
END

IF WEIGHT #5 ~!NumTimesTalkedTo(0)
!PartyHasItem("MISC61")
!PartyHasItem("MISC60")
!PartyHasItem("BOOT06")
GlobalLT("HelpLandrin","GLOBAL",4)~ THEN BEGIN 6
  SAY @14910
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 7
  SAY @14911
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~False()~ THEN BEGIN 8
  SAY @14912
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~True()~ THEN BEGIN 9
  SAY @14913
  IF ~~ THEN EXIT
END
