BEGIN ~quinn~

IF ~~ THEN BEGIN 0
  SAY @15118
  IF ~~ THEN EXIT
END

IF ~Global("HelpQuinn","GLOBAL",0)~ THEN BEGIN 1
  SAY @15119
  IF ~~ THEN DO ~SetGlobal("HelpQuinn","GLOBAL",1)~ UNSOLVED_JOURNAL @310100 EXIT
END

IF ~PartyHasItem("DAGG06")
Global("HelpQuinn","GLOBAL",1)~ THEN BEGIN 2
  SAY @15122
  IF ~~ THEN DO ~TakePartyItem("DAGG06")
GiveItemCreate("MISC32",LastTalkedToBy,0,0,0)
SetGlobal("HelpQuinn","GLOBAL",2)
AddexperienceParty(950)
ReputationInc(1)
EraseJournalEntry(@310100)~ SOLVED_JOURNAL @310101 EXIT
END

IF ~Global("HelpQuinn","GLOBAL",1)~ THEN BEGIN 3
  SAY @15123
  IF ~~ THEN EXIT
END

IF ~false()~ THEN BEGIN 4
  SAY @15124
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @15125
  IF ~~ THEN EXIT
END
