BEGIN ~keldda~

IF WEIGHT #3 ~True()~ THEN BEGIN 0
  SAY @2432
  IF ~~ THEN REPLY @15297 DO ~StartStore("tem3402",LastTalkedToBy())~ EXIT
  IF ~!Dead("BASSILUS")~ THEN REPLY @15298 GOTO 8
  IF ~Dead("BASSILUS")~ THEN REPLY @20626 EXIT
END

IF WEIGHT #0 ~Dead("bassilus")
PartyHasItem("MISC04")
!Global("BassilusDead","GLOBAL",2)~ THEN BEGIN 1
  SAY @2435
  IF ~~ THEN DO ~GiveGoldForce(5000)
SetGlobal("BassilusDead","GLOBAL",2)
AddexperienceParty(1000)
EraseJournalEntry(@310028)
EraseJournalEntry(@310324)
EraseJournalEntry(@310325)
EraseJournalEntry(@310368)
EraseJournalEntry(@310543)
EraseJournalEntry(@310561)
EraseJournalEntry(@310571)
TakePartyItem("MISC04")~ SOLVED_JOURNAL @310027 EXIT
END

IF WEIGHT #1 ~Dead("bassilus")
!PartyHasItem("MISC04")
!Global("BassilusDead","GLOBAL",2)~ THEN BEGIN 2
  SAY @2436
  IF ~~ THEN DO ~StartStore("tem3402",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2437
  IF ~~ THEN DO ~GivePartyGold(2000)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2438
  IF ~~ THEN DO ~TakePartyGold(300)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @2439
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~Dead("X#CoranWyvern")
InParty("Coran")
PartyHasItem("MISC52")
!Global("wyvernp","GLOBAL",1)~ THEN BEGIN 6
  SAY @2440
  IF ~~ THEN DO ~GiveGoldForce(2000)
TakePartyItem("MISC52")
SetGlobal("wyvernp","GLOBAL",1)
EraseJournalEntry(@202510)~ SOLVED_JOURNAL @310589 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @2441
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @10717
  IF ~~ THEN UNSOLVED_JOURNAL @310028 EXIT
END
