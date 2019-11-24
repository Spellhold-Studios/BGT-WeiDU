BEGIN ~avarice~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22356
  IF ~~ THEN UNSOLVED_JOURNAL @310632 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @22357
  IF ~~ THEN DO ~SetGlobal("Avarice","GLOBAL",1)~ EXIT
END

IF ~PartyHasItem("misc1j")~ THEN BEGIN 2
  SAY @22358
  IF ~~ THEN DO ~TakePartyItem("misc1j")
SetGlobal("Avarice","GLOBAL",2)
AddexperienceParty(2000)
DestroySelf()~ EXIT
END

IF ~Global("Avarice","GLOBAL",1)
!PartyHasItem("misc1j")~ THEN BEGIN 3
  SAY @22359
  IF ~~ THEN GOTO 0
END
