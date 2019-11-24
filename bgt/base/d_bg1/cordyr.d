BEGIN ~cordyr~

IF ~ReputationGT(LastTalkedToBy,14)
Global("HelpCordyr","GLOBAL",0)~ THEN BEGIN 0
  SAY @15187
  IF ~~ THEN EXIT
END

IF ~Global("HelpCordyr","GLOBAL",0)~ THEN BEGIN 1
  SAY @15188
  IF ~~ THEN DO ~SetGlobal("HelpCordyr","GLOBAL",1)~ UNSOLVED_JOURNAL @310288 EXIT
END

IF ~!Dead("Sil")
Global("HelpCordyr","GLOBAL",1)~ THEN BEGIN 2
  SAY @15199
  IF ~~ THEN EXIT
END

IF ~Global("HelpCordyr","GLOBAL",1)
ReputationLT(LastTalkedToBy,8)~ THEN BEGIN 3
  SAY @15200
  IF ~~ THEN DO ~GiveItem("SCRL1F",LastTalkedToBy)
AddexperienceParty(1000)
ReputationInc(1)
SetGlobal("HelpCordyr","GLOBAL",2)
EraseJournalEntry(@310288)~ SOLVED_JOURNAL @310289 EXIT
END

IF ~Global("HelpCordyr","GLOBAL",1)~ THEN BEGIN 4
  SAY @15201
  IF ~~ THEN DO ~GiveItem("SCRL1H",LastTalkedToBy)
SetGlobal("HelpCordyr","GLOBAL",2)
EraseJournalEntry(@310288)~ SOLVED_JOURNAL @310289 EXIT
END

IF ~false()~ THEN BEGIN 5
  SAY @15202
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 6
  SAY @15203
  IF ~~ THEN EXIT
END
