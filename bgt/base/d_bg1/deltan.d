BEGIN ~deltan~

IF WEIGHT #0 ~NumTimesTalkedTo(0)
Global("HelpEltan","GLOBAL",0)~ THEN BEGIN 0
  SAY @1431
  IF ~~ THEN REPLY @1443 DO ~SetGlobal("SHITNUTS","GLOBAL",1)
SetNumTimesTalkedTo(1)~ GOTO 2
  IF ~~ THEN REPLY @1444 DO ~SetGlobal("SHITNUTS","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @1445 DO ~SetGlobal("SHITNUTS","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1432
  IF ~~ THEN REPLY @1446 GOTO 3
  IF ~~ THEN REPLY @1447 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @1433
  IF ~~ THEN REPLY @1448 GOTO 3
  IF ~~ THEN REPLY @1449 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @1434
  IF ~~ THEN REPLY @2274 DO ~ForceSpell(Player1,SAREVOK_STRIKE)
Wait(2)
Kill(Player1)~ EXIT
  IF ~Global("HelpEltan","GLOBAL",0)~ THEN REPLY @2296 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @1435
  IF ~~ THEN REPLY @1450 GOTO 5
  IF ~~ THEN REPLY @1451 DO ~SetGlobal("SHITNUTS","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @1436
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY @1437
  IF ~ReputationGT(LastTalkedToBy,5)~ THEN REPLY @1454 DO ~SetGlobal("HelpEltan","GLOBAL",1)
ActionOverride("SCAR",EscapeArea())~ UNSOLVED_JOURNAL @310127 EXIT
  IF ~ReputationLT(LastTalkedToBy,6)~ THEN REPLY @11815 GOTO 16
END

IF WEIGHT #1 ~Global("HelpEltan","GLOBAL",1)~ THEN BEGIN 7
  SAY @1438
  IF ~~ THEN REPLY @1452 GOTO 8
  IF ~~ THEN REPLY @1453 GOTO 5
  IF ~PartyHasItem("SCRL3C")~ THEN REPLY @1455 GOTO 10
  IF ~Global("SearchIronThrone","GLOBAL",1)~ THEN REPLY @1456 GOTO 11
  IF ~~ THEN REPLY @20712 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1439
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1440
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1441
  IF ~~ THEN DO ~GiveGoldForce(2000)
SetGlobal("HelpEltan","GLOBAL",2)
GiveItem("BOOK68",LastTalkedToBy)
IncrementChapter("Chptxt-6")
AddJournalEntry(@310738,INFO)
ActionOverride(Player1,LeaveAreaLUAPanic("AR6526","",[4714.2930],12))
ActionOverride(Player1,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player2,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player3,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player4,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player5,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player6,LeaveAreaLUA("AR6526","",[4714.2930],12))
DestroySelf()
~ UNSOLVED_JOURNAL @310128 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1442
  IF ~~ THEN DO ~GiveGoldForce(2000)
SetGlobal("HelpEltan","GLOBAL",2)
GiveItem("BOOK68",LastTalkedToBy)
IncrementChapter("Chptxt-6")
AddJournalEntry(@310738,INFO)
ActionOverride(Player1,LeaveAreaLUAPanic("AR6526","",[4714.2930],12))
ActionOverride(Player1,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player2,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player3,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player4,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player5,LeaveAreaLUA("AR6526","",[4714.2930],12))
ActionOverride(Player6,LeaveAreaLUA("AR6526","",[4714.2930],12))
DestroySelf()
~ UNSOLVED_JOURNAL @310128 EXIT
END

IF WEIGHT #2 ~Dead("Rashad")
Global("EltanMove","GLOBAL",0)~ THEN BEGIN 12
  SAY @2159
  IF ~~ THEN DO ~GiveItemCreate("MISC55",LastTalkedToBy,0,0,0)
EraseJournalEntry(@310205)
EraseJournalEntry(@310206)
EraseJournalEntry(@310220)
EraseJournalEntry(@310347)
EraseJournalEntry(@310398)
EraseJournalEntry(@310469)
DestroySelf()~ SOLVED_JOURNAL @310217 EXIT
END

IF WEIGHT #3 ~Global("EltanMove","GLOBAL",1)~ THEN BEGIN 13
  SAY @2162
  IF ~~ THEN DO ~SetGlobal("EltanMove","GLOBAL",2)
EraseJournalEntry(@310205)
EraseJournalEntry(@310206)
EraseJournalEntry(@310220)
EraseJournalEntry(@310347)
EraseJournalEntry(@310398)
EraseJournalEntry(@310469)~ SOLVED_JOURNAL @310217 EXIT
END

IF WEIGHT #5 ~True()~ THEN BEGIN 14
  SAY @6127
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~false()~ THEN BEGIN 15
  SAY @958
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @11816
  IF ~~ THEN DO ~SetGlobal("HelpEltan","GLOBAL",1)
ActionOverride("SCAR",EscapeArea())~ EXIT
END
