BEGIN ~ramazi~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2636
  IF ~ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)~ THEN REPLY @2637 GOTO 3
  IF ~~ THEN REPLY @2638 GOTO 1
  IF ~ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)~ THEN REPLY @2639 GOTO 4
  IF ~ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)~ THEN REPLY @2679 GOTO 4
  IF ~ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN REPLY @2680 GOTO 5
  IF ~ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)~ THEN REPLY @2681 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @2640
  IF ~~ THEN DO ~SetGlobal("HelpRamazith","GLOBAL",4)~ EXIT
END

IF WEIGHT #2 ~Global("HelpRamazith","GLOBAL",4)~ THEN BEGIN 2
  SAY @2641
  IF ~~ THEN REPLY @2643 GOTO 1
  IF ~~ THEN REPLY @2646 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @2642
  IF ~~ THEN REPLY @2644 DO ~SetGlobal("RefusedRamazith","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @2645 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @2649
  IF ~~ THEN REPLY @2666 DO ~SetGlobal("RefusedRamazith","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @2667 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @2650
  IF ~~ THEN REPLY @2669 DO ~SetGlobal("RefusedRamazith","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @2670 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @2651
  IF ~~ THEN REPLY @2647 GOTO 7
  IF ~~ THEN REPLY @2648 GOTO 9
  IF ~~ THEN REPLY @2668 GOTO 8
  IF ~~ THEN REPLY @2678 GOTO 1
END

IF ~~ THEN BEGIN 7
  SAY @2653
  IF ~~ THEN REPLY @2652 GOTO 8
  IF ~~ THEN REPLY @2671 GOTO 9
  IF ~~ THEN REPLY @2672 GOTO 7
  IF ~~ THEN REPLY @2677 GOTO 1
END

IF ~~ THEN BEGIN 8
  SAY @2654
  IF ~~ THEN REPLY @2673 GOTO 8
  IF ~~ THEN REPLY @2674 GOTO 9
  IF ~~ THEN REPLY @2675 GOTO 7
  IF ~~ THEN REPLY @2676 GOTO 1
END

IF ~~ THEN BEGIN 9
  SAY @2655
  IF ~~ THEN DO ~SetGlobal("HelpRamazith","GLOBAL",1)
SetGlobal("RamazithMove","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @310182 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @2656
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~Global("HelpRamazith","GLOBAL",1)
Global("RamazithMove","GLOBAL",1)
!PartyHasItem("MISC68")~ THEN BEGIN 11
  SAY @2657
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),WIZARD_LIGHTNING_BOLT)
SetGlobal("RamazithMove","GLOBAL",2)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @2658
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Global("HelpRamazith","GLOBAL",1)
PartyHasItem("MISC68")~ THEN BEGIN 13
  SAY @2659
  IF ~~ THEN DO ~SetGlobal("HelpRamazith","GLOBAL",2)
TakePartyItem("MISC68")
DestroyItem("MISC68")
CreateCreature("ABELA",[260.170],0)
ActionOverride("Abela",Dialogue([PC]))~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @2660
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @2661
  IF ~~ THEN DO ~GiveItemCreate("BRAC02",LastTalkedToBy(),0,0,0)
SetGlobalTimer("Ramazith","GLOBAL",5)
SetGlobal("HelpRamazith","GLOBAL",3)
EraseJournalEntry(@310182)
EraseJournalEntry(@310183)
EraseJournalEntry(@310564)
EraseJournalEntry(@310184)~ SOLVED_JOURNAL @310186 EXIT
END

IF WEIGHT #5 ~GlobalTimerExpired("Ramazith","GLOBAL")
Global("RamazithMove","GLOBAL",1)~ THEN BEGIN 16
  SAY @2662
  IF ~~ THEN REPLY @2732 GOTO 20
  IF ~~ THEN REPLY @2733 GOTO 18
  IF ~~ THEN REPLY @2734 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @2663
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
ForceSpell(LastTalkedToBy(),WIZARD_LIGHTNING_BOLT)
SetGlobal("RamazithMove","GLOBAL",2)
DialogueInterrupt(TRUE)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @2664
  IF ~~ THEN REPLY @2736 GOTO 20
  IF ~~ THEN REPLY @2737 GOTO 17
  IF ~~ THEN REPLY @2738 UNSOLVED_JOURNAL @310183 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @2665
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
ForceSpell(LastTalkedToBy(),WIZARD_LIGHTNING_BOLT)
SetGlobal("RamazithMove","GLOBAL",2)
DialogueInterrupt(TRUE)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @2735
  IF ~~ THEN DO ~SetGlobalTimer("Ramazith","GLOBAL",10)~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 21
  SAY @6110
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~True()~ THEN BEGIN 22
  SAY @6111
  IF ~~ THEN EXIT
END
