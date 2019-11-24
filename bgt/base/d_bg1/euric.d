BEGIN ~euric~

IF WEIGHT #2 ~Global("HelpEuric","GLOBAL",0)~ THEN BEGIN 0
  SAY @15242
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("GivenEuricQuest", "GLOBAL",1)
PartyHasItem("AMUL14")
Global("HelpEuric","GLOBAL",0)~ THEN BEGIN 1
  SAY @15243
  IF ~~ THEN DO ~SetGlobal("HelpEuric","GLOBAL",1)
TakePartyItem("AMUL14")
AddexperienceParty(1100)
EraseJournalEntry(@310237)~ UNSOLVED_JOURNAL @311238 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @15244
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~false()~ THEN BEGIN 3
  SAY @15245
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~True()~ THEN BEGIN 4
  SAY @15246
  IF ~~ THEN EXIT
END
