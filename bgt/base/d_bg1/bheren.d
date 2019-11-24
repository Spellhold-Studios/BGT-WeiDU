BEGIN ~bheren~

IF ~NumTimesTalkedTo(0)
ReputationGT(LastTalkedToBy,14)~ THEN BEGIN 0
  SAY @15132
  IF ~~ THEN UNSOLVED_JOURNAL @310188 EXIT
END

IF ~NumTimesTalkedTo(0)
ReputationLT(LastTalkedToBy,15)~ THEN BEGIN 1
  SAY @15133
  IF ~~ THEN UNSOLVED_JOURNAL @310189 EXIT
END

IF ~ReputationLT(LastTalkedToBy,8)
Dead("PetrinesCat")
Global("HelpBheren","GLOBAL",0)~ THEN BEGIN 2
  SAY @15134
  IF ~~ THEN DO ~SetGlobal("HelpBheren","GLOBAL",1)
GiveItem("CLCK01",LastTalkedToBy)
EraseJournalEntry(@310187)
EraseJournalEntry(@310188)
EraseJournalEntry(@310189)~ SOLVED_JOURNAL @310474 EXIT
END

IF ~ReputationGT(LastTalkedToBy,7)
Dead("PetrinesCat")
Global("HelpBheren","GLOBAL",0)~ THEN BEGIN 3
  SAY @15135
  IF ~~ THEN DO ~SetGlobal("HelpBheren","GLOBAL",1)
AddexperienceParty(400)
ReputationInc(-1)
EraseJournalEntry(@310187)
EraseJournalEntry(@310188)
EraseJournalEntry(@310189)~ SOLVED_JOURNAL @311189 EXIT
END

IF ~False()~ THEN BEGIN 4
  SAY @15136
  IF ~~ THEN EXIT
END

IF ~Global("HelpBheren","GLOBAL",1)~ THEN BEGIN 5
  SAY @15137
  IF ~~ THEN EXIT
END
