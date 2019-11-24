BEGIN ~zhurlo~

IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @14957
  IF ~~ THEN DO ~TakePartyGold(35)
EscapeArea()~ EXIT
END

IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @14958
  IF ~~ THEN DO ~TakePartyGold(25)~ UNSOLVED_JOURNAL @310034 EXIT
END

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @14959
  IF ~~ THEN DO ~TakePartyGold(15)~ UNSOLVED_JOURNAL @310034 EXIT
END

IF ~!PartyHasItem("BOOT02")
Global("HelpZhurlong","GLOBAL",0)~ THEN BEGIN 3
  SAY @14961
  IF ~~ THEN DO ~TakePartyGold(30)~ EXIT
END

IF ~PartyHasItem("BOOT02")~ THEN BEGIN 4
  SAY @14963
  IF ~~ THEN DO ~ChangeClass(Myself,INNOCENT)
AddExperienceParty(300)
TakePartyItem("BOOT02")
GivePartyGold(1000000)
SetGlobal("HelpZhurlong","GLOBAL",1)
EraseJournalEntry(@310034)~ SOLVED_JOURNAL @310035 EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @14965
  IF ~~ THEN DO ~TakePartyGold(20)~ EXIT
END

IF ~False()~ THEN BEGIN 6
  SAY @14966
  IF ~~ THEN DO ~~ EXIT
END
