BEGIN ~degrod~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @10327
  IF ~~ THEN REPLY @10382 GOTO 1
  IF ~~ THEN REPLY @10383 GOTO 1
  IF ~~ THEN REPLY @10384 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @10385
  IF ~~ THEN DO ~CreateCreature("HELMHO",[371.427],0)
CreateCreature("DOOMGU",[418.460],0)
CreateCreature("DOOMGU",[326.489],0)
CreateCreature("STALKE",[351.605],0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10386
  IF ~~ THEN REPLY @10389 GOTO 4
  IF ~~ THEN REPLY @10391 GOTO 5
  IF ~~ THEN REPLY @10392 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @10393
  IF ~~ THEN REPLY @10395 GOTO 4
  IF ~~ THEN REPLY @10396 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @10397
  IF ~~ THEN REPLY @10398 GOTO 5
  IF ~~ THEN REPLY @10399 GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY @10400
  IF ~~ THEN DO ~SetGlobal("Baldurian","GLOBAL",1)
GiveItem("SCRLPET",LastTalkedToBy)
GiveItem("SCRLPET",LastTalkedToBy)
GiveItem("SCRLPET",LastTalkedToBy)
GiveItem("SCRLPET",LastTalkedToBy)
GiveItem("SCRLPET",LastTalkedToBy)
GiveItem("SCRLPET",LastTalkedToBy)~ UNSOLVED_JOURNAL @310167 EXIT
END

IF ~!PartyHasItem("HELM07")~ THEN BEGIN 6
  SAY @10416
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("HELM07")~ THEN BEGIN 7
  SAY @10417
  IF ~~ THEN DO ~GiveGoldForce(5000)
TakePartyItem("HELM07")
CreateCreature("HELMHO",[371.427],0)
CreateCreature("DOOMGU",[418.460],0)
CreateCreature("DOOMGU",[326.489],0)
CreateCreature("STALKE",[351.605],0)
EraseJournalEntry(@310167)
EraseJournalEntry(@310168)
EraseJournalEntry(@310169)
EraseJournalEntry(@310170)
EscapeArea()~ SOLVED_JOURNAL @310171 EXIT
END
