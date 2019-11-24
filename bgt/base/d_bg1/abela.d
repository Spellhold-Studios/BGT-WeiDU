BEGIN ~abela~

IF ~~ THEN BEGIN 0
  SAY @2682
  IF ~~ THEN EXTERN ~RAGEFA~ 1
END

IF ~~ THEN BEGIN 1
  SAY @2683
  IF ~~ THEN EXTERN ~RAGEFA~ 9
END

IF ~~ THEN BEGIN 2
  SAY @2684
  IF ~~ THEN EXTERN ~RAGEFA~ 10
END

IF ~~ THEN BEGIN 3
  SAY @2685
  IF ~~ THEN EXTERN ~RAGEFA~ 11
END

IF ~~ THEN BEGIN 4
  SAY @2686
  IF ~~ THEN DO ~SetGlobal("AbelaTeleport","GLOBAL",1)
GiveItem("MISC51",LastTalkedToBy)
AddexperienceParty(2000)
EraseJournalEntry(@310182)
EraseJournalEntry(@310183)
EraseJournalEntry(@310564)
EraseJournalEntry(@310184)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @310185 EXIT
END

IF WEIGHT #1 ~Dead("Ragefast")~ THEN BEGIN 5
  SAY @2687
  IF ~~ THEN REPLY @2688 GOTO 6
  IF ~Global("HelpRamazith","GLOBAL",1)~ THEN REPLY @2689 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @2690
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @2691
  IF ~~ THEN DO ~SetGlobal("AbelaTeleport","GLOBAL",1)
GiveItem("MISC51",LastTalkedToBy)
AddexperienceParty(2000)
EraseJournalEntry(@310182)
EraseJournalEntry(@310183)
EraseJournalEntry(@310564)
EraseJournalEntry(@310184)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @310185 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2692
  IF ~~ THEN REPLY @2693 UNSOLVED_JOURNAL @310184 GOTO 9
  IF ~~ THEN REPLY @2731 GOTO 6
END

IF ~~ THEN BEGIN 9
  SAY @2694
  IF ~~ THEN DO ~GiveItemCreate("MISC68",LastTalkedToBy,0,0,0)
DestroySelf()~ EXIT
END

IF WEIGHT #0 ~Global("HelpRamazith","GLOBAL",2)~ THEN BEGIN 10
  SAY @2695
  IF ~~ THEN EXTERN ~RAMAZI~ 14
END

IF WEIGHT #2 ~Dead("Ramazith")
Global("HelpRamazith","GLOBAL",3)~ THEN BEGIN 11
  SAY @2696
  IF ~~ THEN REPLY @2697 GOTO 13
  IF ~~ THEN REPLY @2698 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @2699
  IF ~~ THEN DO ~ReputationInc(-5)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @2700
  IF ~~ THEN DO ~
EraseJournalEntry(@310182)
EraseJournalEntry(@310183)
EraseJournalEntry(@310564)
EraseJournalEntry(@310184)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @311183 EXIT
END
