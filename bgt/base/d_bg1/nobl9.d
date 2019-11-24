BEGIN ~nobl9~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7995
  IF ~ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN REPLY @8008 GOTO 1
  IF ~ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN REPLY @8009 GOTO 2
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)~ THEN REPLY @8010 GOTO 3
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @8011 GOTO 4
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)~ THEN REPLY @8012 GOTO 7
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @8013 GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY @7996
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7997
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7998
  IF ~~ THEN DO ~SetGlobal("GoldenPantaloons","GLOBAL",1)
GiveItem("MISC47",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7999
  IF ~~ THEN DO ~SetGlobal("GoldenPantaloons","GLOBAL",1)
GiveItem("MISC47",LastTalkedToBy)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @8000
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8001
  IF ~~ THEN DO ~GivePartyGold(2)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8002
  IF ~~ THEN DO ~TakePartyItem("MISC47")~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8003
  IF ~~ THEN DO ~TakePartyItem("MISC47")~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @8004
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("MISC47")
Global("GoldenPantaloons","GLOBAL",1)~ THEN BEGIN 10
  SAY @8005
  IF ~~ THEN DO ~AddexperienceParty(100)
TakePartyItem("MISC47")
SetGlobal("GoldenPantaloons","GLOBAL",2)~ EXIT
END

IF ~!PartyHasItem("MISC47")
Global("GoldenPantaloons","GLOBAL",1)~ THEN BEGIN 11
  SAY @8006
  IF ~~ THEN EXIT
END

IF ~Global("GoldenPantaloons","GLOBAL",0)~ THEN BEGIN 12
  SAY @8007
  IF ~~ THEN EXIT
END
