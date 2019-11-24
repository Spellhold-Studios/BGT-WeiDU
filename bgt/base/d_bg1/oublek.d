BEGIN ~oublek~

IF WEIGHT #3 ~NumTimesTalkedTo(0)
InParty([0.0.0.0.0.MALE])~ THEN BEGIN 0
  SAY @658
  IF ~~ THEN REPLY @4590 DO ~SetGlobal("Greywolf","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @4592 DO ~SetGlobal("Greywolf","GLOBAL",0)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @659
  IF ~~ THEN DO ~ReputationInc(1)~ JOURNAL @310441 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @660
  IF ~~ THEN DO ~GivePartyGold(200)~ JOURNAL @310213 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @661
  IF ~~ THEN DO ~AddexperienceParty(200)
GiveGoldForce(1000)
SetGlobal("OublekBounty1","GLOBAL",1)
EraseJournalEntry(@310055)
EraseJournalEntry(@310058)
EraseJournalEntry(@310302)
EraseJournalEntry(@310303)
EraseJournalEntry(@310304)
EraseJournalEntry(@310305)
EraseJournalEntry(@310306)
EraseJournalEntry(@310308)
EraseJournalEntry(@310551)
EraseJournalEntry(@310563)
EraseJournalEntry(@310570)
EraseJournalEntry(@310059)~ SOLVED_JOURNAL @310057 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @662
  IF ~~ THEN DO ~AddexperienceParty(200)
GivePartyGold(300)
TakePartyItem("MISC43")
TakePartyItem("MISC43")
SetGlobal("OublekBounty2","GLOBAL",1)
EraseJournalEntry(@310060)
EraseJournalEntry(@311060)
EraseJournalEntry(@310489)
EraseJournalEntry(@310490)
EraseJournalEntry(@310491)
EraseJournalEntry(@310572)~ SOLVED_JOURNAL @310061 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @663
  IF ~~ THEN JOURNAL @310442 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @664
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @665
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @666
  IF ~~ THEN DO ~AddexperienceParty(500)
GivePartyGold(250)
TakePartyItem("MISC65")
SetGlobal("OublekBounty1","GLOBAL",1)
EraseJournalEntry(@310055)
EraseJournalEntry(@310058)
EraseJournalEntry(@310302)
EraseJournalEntry(@310303)
EraseJournalEntry(@310304)
EraseJournalEntry(@310305)
EraseJournalEntry(@310306)
EraseJournalEntry(@310308)
EraseJournalEntry(@310551)
EraseJournalEntry(@310563)
EraseJournalEntry(@310570)
EraseJournalEntry(@310059)~ SOLVED_JOURNAL @310057 EXIT
END

IF WEIGHT #4 ~Global("Greywolf","GLOBAL",0)~ THEN BEGIN 9
  SAY @4602
  IF ~PartyHasItem("MISC65")~ THEN REPLY @4611 GOTO 8
  IF ~Global("OublekBounty2","GLOBAL",0)
PartyHasItem("MISC43")~ THEN REPLY @4627 GOTO 4
  IF ~~ THEN REPLY @4626 GOTO 11
  IF ~Global("OublekBounty1","GLOBAL",0)
Global("OublekBounty2","GLOBAL",1)~ THEN REPLY @4645 GOTO 26
  IF ~!PartyHasItem("MISC65")
!PartyHasItem("MISC43")~ THEN REPLY @4647 GOTO 15
  IF ~Global("OublekBounty1","GLOBAL",1)
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY @2007 GOTO 27
  IF ~Global("OublekBounty1","GLOBAL",0)
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY @8438 GOTO 28
  IF ~Global("OublekBounty1","GLOBAL",1)
Global("OublekBounty2","GLOBAL",1)~ THEN REPLY @12737 GOTO 29
END

IF WEIGHT #5 ~Global("Greywolf","GLOBAL",1)~ THEN BEGIN 10
  SAY @4604
  IF ~Global("BroughtBounty","GLOBAL",0)~ THEN REPLY @4628 DO ~SetGlobal("BroughtBounty","GLOBAL",1)~ GOTO 5
  IF ~PartyHasItem("MISC65")
Global("BroughtBounty","GLOBAL",1)~ THEN REPLY @4649 GOTO 14
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @4651 GOTO 11
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)~ THEN REPLY @4652 GOTO 6
  IF ~Global("OublekBounty1","GLOBAL",0)
Global("OublekBounty2","GLOBAL",1)~ THEN REPLY @4654 GOTO 26
  IF ~!PartyHasItem("MISC65")
!PartyHasItem("MISC43")
Global("BroughtBounty","GLOBAL",1)~ THEN REPLY @4656 GOTO 15
  IF ~Global("OublekBounty1","GLOBAL",1)
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY @12738 GOTO 27
  IF ~Global("OublekBounty1","GLOBAL",0)
Global("OublekBounty2","GLOBAL",0)~ THEN REPLY @12739 GOTO 28
  IF ~Global("OublekBounty1","GLOBAL",1)
Global("OublekBounty2","GLOBAL",1)~ THEN REPLY @12740 GOTO 29
  IF ~Global("OublekBounty2","GLOBAL",0)
PartyHasItem("MISC43")
Global("BroughtBounty","GLOBAL",1)~ THEN REPLY @19717 GOTO 30
END

IF ~~ THEN BEGIN 11
  SAY @4629
  IF ~~ THEN REPLY @4630 GOTO 13
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @4631 GOTO 18
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @4635 GOTO 17
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @4637 GOTO 6
  IF ~~ THEN REPLY @4640 GOTO 12
  IF ~False()~ THEN REPLY @4659 GOTO 19
END

IF ~~ THEN BEGIN 12
  SAY @4633
  IF ~~ THEN REPLY @4641 GOTO 17
  IF ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN REPLY @4642 GOTO 21
  IF ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)~ THEN REPLY @4643 GOTO 20
  IF ~~ THEN REPLY @4644 GOTO 22
END

IF ~~ THEN BEGIN 13
  SAY @4648
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @4650
  IF ~~ THEN DO ~AddexperienceParty(250)
GivePartyGold(150)
TakePartyItem("MISC65")
SetGlobal("OublekBounty1","GLOBAL",1)
EraseJournalEntry(@310055)
EraseJournalEntry(@310058)
EraseJournalEntry(@310302)
EraseJournalEntry(@310303)
EraseJournalEntry(@310304)
EraseJournalEntry(@310305)
EraseJournalEntry(@310306)
EraseJournalEntry(@310308)
EraseJournalEntry(@310551)
EraseJournalEntry(@310563)
EraseJournalEntry(@310570)
EraseJournalEntry(@310059)~ SOLVED_JOURNAL @310057 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @4653
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @4655
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @4657
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @4658
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @4660
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @4661
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY @4662
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @4663
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @6357
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 24
  SAY @6358
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @9115
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @1985
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27
  SAY @1998
  IF ~~ THEN UNSOLVED_JOURNAL @310060 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @12735
  IF ~~ THEN UNSOLVED_JOURNAL @310060 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @12736
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30
  SAY @4650
  IF ~~ THEN DO
~AddexperienceParty(200)
GivePartyGold(150)
TakePartyItem("MISC43")
TakePartyItem("MISC43")
SetGlobal("OublekBounty2","GLOBAL",1)
EraseJournalEntry(@310060)
EraseJournalEntry(@311060)
EraseJournalEntry(@310489)
EraseJournalEntry(@310490)
EraseJournalEntry(@310491)
EraseJournalEntry(@310572)~ SOLVED_JOURNAL @310806 EXIT
END
