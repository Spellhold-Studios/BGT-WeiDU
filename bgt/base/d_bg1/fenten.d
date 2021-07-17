BEGIN ~fenten~

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 0
  SAY @15153
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @15154
  IF ~~ THEN UNSOLVED_JOURNAL @310234 EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 2
  SAY @15159
  IF ~~ THEN UNSOLVED_JOURNAL @310235 EXIT
END

IF ~Global("HelpFenten","GLOBAL",0)
PartyHasItem("MISC12")~ THEN BEGIN 3
  SAY @15160
  IF ~~ THEN DO ~SetGlobal("HelpFenten","GLOBAL",1)
TakePartyItemAll("MISC12")
GiveGoldForce(250)~ EXIT
END

IF ~False()~ THEN BEGIN 4
  SAY @15161
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @15162
  IF ~~ THEN EXIT
END
