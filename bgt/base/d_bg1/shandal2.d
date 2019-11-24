BEGIN ~shandal2~

IF WEIGHT #4 ~NumTimesTalkedTo(0)
Dead("Helshara")
Dead("Ithmeera")
Dead("Delorna")~ THEN BEGIN 0
  SAY @23564
  IF ~~ THEN REPLY @23566 GOTO 1
  IF ~~ THEN REPLY @23567 GOTO 2
  IF ~~ THEN REPLY @23568 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @23569
  IF ~~ THEN REPLY @23570 GOTO 3
  IF ~~ THEN REPLY @23571 GOTO 2
  IF ~~ THEN REPLY @23572 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @23573
  IF ~~ THEN REPLY @23579 GOTO 5
  IF ~~ THEN REPLY @23580 GOTO 4
  IF ~~ THEN REPLY @23581 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @23574
  IF ~~ THEN REPLY @23575 GOTO 2
  IF ~~ THEN REPLY @23576 GOTO 4
  IF ~~ THEN REPLY @23577 GOTO 5
  IF ~~ THEN REPLY @23578 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @23582
  IF ~~ THEN DO ~SetGlobal("KillDaughter","GLOBAL",1)
GiveItem("MISC2H",LastTalkedToBy)
ActionOverride(Player1,LeaveAreaLUAPanic("ARU008","",[553.492],12))
ActionOverride(Player1,LeaveAreaLUA("ARU008","",[553.492],12))
ActionOverride(Player2,LeaveAreaLUA("ARU008","",[512.496],12))
ActionOverride(Player3,LeaveAreaLUA("ARU008","",[473.497],12))
ActionOverride(Player4,LeaveAreaLUA("ARU008","",[441.489],12))
ActionOverride(Player5,LeaveAreaLUA("ARU008","",[398.486],12))
ActionOverride(Player6,LeaveAreaLUA("ARU008","",[354.469],12))~ UNSOLVED_JOURNAL @310793 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @23583
  IF ~~ THEN DO ~SetGlobal("KillDaughter","GLOBAL",1)
GiveItem("MISC2H",LastTalkedToBy)
ActionOverride(Player1,LeaveAreaLUAPanic("ARU008","",[553.492],12))
ActionOverride(Player1,LeaveAreaLUA("ARU008","",[553.492],12))
ActionOverride(Player2,LeaveAreaLUA("ARU008","",[512.496],12))
ActionOverride(Player3,LeaveAreaLUA("ARU008","",[473.497],12))
ActionOverride(Player4,LeaveAreaLUA("ARU008","",[441.489],12))
ActionOverride(Player5,LeaveAreaLUA("ARU008","",[398.486],12))
ActionOverride(Player6,LeaveAreaLUA("ARU008","",[354.469],12))~ UNSOLVED_JOURNAL @310793 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @23584
  IF ~~ THEN DO ~SetGlobal("KillDaughter","GLOBAL",1)
GiveItem("MISC2H",LastTalkedToBy)
ActionOverride(Player1,LeaveAreaLUAPanic("ARU008","",[553.492],12))
ActionOverride(Player1,LeaveAreaLUA("ARU008","",[553.492],12))
ActionOverride(Player2,LeaveAreaLUA("ARU008","",[512.496],12))
ActionOverride(Player3,LeaveAreaLUA("ARU008","",[473.497],12))
ActionOverride(Player4,LeaveAreaLUA("ARU008","",[441.489],12))
ActionOverride(Player5,LeaveAreaLUA("ARU008","",[398.486],12))
ActionOverride(Player6,LeaveAreaLUA("ARU008","",[354.469],12))~ UNSOLVED_JOURNAL @310793 EXIT
END

IF WEIGHT #5 ~NumTimesTalkedTo(0)
ReputationLT(LastTalkedToBy,6)~ THEN BEGIN 7
  SAY @23585
  IF ~~ THEN REPLY @23586 GOTO 8
  IF ~~ THEN REPLY @23587 GOTO 9
  IF ~~ THEN REPLY @23588 GOTO 11
  IF ~~ THEN REPLY @23589 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @23590
  IF ~~ THEN REPLY @23593 GOTO 12
  IF ~~ THEN REPLY @23594 GOTO 13
  IF ~~ THEN REPLY @23595 GOTO 14
END

IF ~~ THEN BEGIN 9
  SAY @23596
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @23597
  IF ~~ THEN REPLY @23598 GOTO 12
  IF ~~ THEN REPLY @23599 GOTO 13
  IF ~~ THEN REPLY @23600 GOTO 14
END

IF ~~ THEN BEGIN 11
  SAY @23601
  IF ~~ THEN REPLY @23602 GOTO 12
  IF ~~ THEN REPLY @23603 GOTO 13
  IF ~~ THEN REPLY @23604 GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY @23605
  IF ~~ THEN DO ~SetGlobal("Evilsh","GLOBAL",1)
GiveItem("MISC2H",LastTalkedToBy)
ActionOverride(Player1,LeaveAreaLUAPanic("ARU008","",[553.492],12))
ActionOverride(Player1,LeaveAreaLUA("ARU008","",[553.492],12))
ActionOverride(Player2,LeaveAreaLUA("ARU008","",[512.496],12))
ActionOverride(Player3,LeaveAreaLUA("ARU008","",[473.497],12))
ActionOverride(Player4,LeaveAreaLUA("ARU008","",[441.489],12))
ActionOverride(Player5,LeaveAreaLUA("ARU008","",[398.486],12))
ActionOverride(Player6,LeaveAreaLUA("ARU008","",[354.469],12))~ UNSOLVED_JOURNAL @310809 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @23606
  IF ~~ THEN DO ~SetGlobal("Evilsh","GLOBAL",1)
GiveItem("MISC2H",LastTalkedToBy)
ActionOverride(Player1,LeaveAreaLUAPanic("ARU008","",[553.492],12))
ActionOverride(Player1,LeaveAreaLUA("ARU008","",[553.492],12))
ActionOverride(Player2,LeaveAreaLUA("ARU008","",[512.496],12))
ActionOverride(Player3,LeaveAreaLUA("ARU008","",[473.497],12))
ActionOverride(Player4,LeaveAreaLUA("ARU008","",[441.489],12))
ActionOverride(Player5,LeaveAreaLUA("ARU008","",[398.486],12))
ActionOverride(Player6,LeaveAreaLUA("ARU008","",[354.469],12))~ UNSOLVED_JOURNAL @310809 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @23607
  IF ~~ THEN DO ~SetGlobal("Evilsh","GLOBAL",1)
GiveItem("MISC2H",LastTalkedToBy)
ActionOverride(Player1,LeaveAreaLUAPanic("ARU008","",[553.492],12))
ActionOverride(Player1,LeaveAreaLUA("ARU008","",[553.492],12))
ActionOverride(Player2,LeaveAreaLUA("ARU008","",[512.496],12))
ActionOverride(Player3,LeaveAreaLUA("ARU008","",[473.497],12))
ActionOverride(Player4,LeaveAreaLUA("ARU008","",[441.489],12))
ActionOverride(Player5,LeaveAreaLUA("ARU008","",[398.486],12))
ActionOverride(Player6,LeaveAreaLUA("ARU008","",[354.469],12))~ UNSOLVED_JOURNAL @310809 EXIT
END

IF WEIGHT #6 ~NumTimesTalkedTo(0)
ReputationGT(LastTalkedToBy,5)~ THEN BEGIN 15
  SAY @23610
  IF ~~ THEN REPLY @23611 GOTO 16
  IF ~~ THEN REPLY @23612 GOTO 17
  IF ~~ THEN REPLY @23613 GOTO 18
END

IF ~~ THEN BEGIN 16
  SAY @23614
  IF ~~ THEN REPLY @23635 GOTO 19
  IF ~~ THEN REPLY @23636 GOTO 20
  IF ~~ THEN REPLY @23637 GOTO 21
  IF ~~ THEN REPLY @23638 GOTO 22
END

IF ~~ THEN BEGIN 17
  SAY @23620
  IF ~~ THEN REPLY @23640 GOTO 19
  IF ~~ THEN REPLY @23641 GOTO 20
  IF ~~ THEN REPLY @23643 GOTO 21
  IF ~~ THEN REPLY @23644 GOTO 22
END

IF ~~ THEN BEGIN 18
  SAY @23625
  IF ~~ THEN REPLY @23630 GOTO 19
  IF ~~ THEN REPLY @23631 GOTO 20
  IF ~~ THEN REPLY @23632 GOTO 21
  IF ~~ THEN REPLY @23633 GOTO 22
END

IF ~~ THEN BEGIN 19
  SAY @23645
  IF ~~ THEN REPLY @23649 GOTO 23
  IF ~~ THEN REPLY @23650 GOTO 24
END

IF ~~ THEN BEGIN 20
  SAY @23647
  IF ~~ THEN REPLY @23656 GOTO 23
  IF ~~ THEN REPLY @23657 GOTO 24
END

IF ~~ THEN BEGIN 21
  SAY @23659
  IF ~~ THEN REPLY @23662 GOTO 24
  IF ~~ THEN REPLY @23664 GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY @23665
  IF ~~ THEN REPLY @23666 GOTO 24
  IF ~~ THEN REPLY @23667 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @23668
  IF ~~ THEN DO ~SetGlobal("Waitsh","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @23669
  IF ~~ THEN DO ~SetGlobal("Goodsh","GLOBAL",1)
SetGlobal("Waitsh","GLOBAL",2)
GiveItem("MISC2H",LastTalkedToBy)
ActionOverride(Player1,LeaveAreaLUAPanic("ARU008","",[553.492],12))
ActionOverride(Player1,LeaveAreaLUA("ARU008","",[553.492],12))
ActionOverride(Player2,LeaveAreaLUA("ARU008","",[512.496],12))
ActionOverride(Player3,LeaveAreaLUA("ARU008","",[473.497],12))
ActionOverride(Player4,LeaveAreaLUA("ARU008","",[441.489],12))
ActionOverride(Player5,LeaveAreaLUA("ARU008","",[398.486],12))
ActionOverride(Player6,LeaveAreaLUA("ARU008","",[354.469],12))~ UNSOLVED_JOURNAL @310810 EXIT
END

IF WEIGHT #0 ~Global("Waitsh","GLOBAL",1)~ THEN BEGIN 25
  SAY @23670
  IF ~~ THEN REPLY @23671 GOTO 24
  IF ~~ THEN REPLY @23672 GOTO 23
END

IF WEIGHT #1 ~Global("Goodsh","GLOBAL",1)
PartyHasItem("CLCK22")~ THEN BEGIN 26
  SAY @23673
  IF ~~ THEN REPLY @23675 GOTO 27
  IF ~~ THEN REPLY @23677 GOTO 28
  IF ~~ THEN REPLY @23679 GOTO 29
END

IF ~~ THEN BEGIN 27
  SAY @23680
  IF ~~ THEN DO ~EraseJournalEntry(@310810)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H")
AddexperienceParty(500)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @310811 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @23682
  IF ~~ THEN DO ~EraseJournalEntry(@310810)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H")
AddexperienceParty(500)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @310811 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @23683
  IF ~~ THEN DO ~EraseJournalEntry(@310810)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H")
AddexperienceParty(500)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @310811 EXIT
END

IF WEIGHT #2 ~Global("Evilsh","GLOBAL",1)
PartyHasItem("CLCK22")~ THEN BEGIN 30
  SAY @23684
  IF ~~ THEN DO ~EraseJournalEntry(@310809)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H")
AddexperienceParty(500)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @310812 EXIT
END

IF WEIGHT #3 ~Global("KillDaughter","GLOBAL",1)
PartyHasItem("CLCK22")~ THEN BEGIN 31
  SAY @23685
  IF ~~ THEN DO ~EraseJournalEntry(@310793)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H")
AddexperienceParty(500)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @310813 EXIT
END
