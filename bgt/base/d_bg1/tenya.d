BEGIN ~tenya~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1146
  IF ~~ THEN REPLY @1821 GOTO 1
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @1822 GOTO 2
  IF ~~ THEN REPLY @1823 GOTO 2
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @1824 GOTO 14
END

IF ~~ THEN BEGIN 1
  SAY @1147
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1148
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1149
  IF ~~ THEN DO ~Enemy()~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @1150
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~Global("TenyaHit","GLOBAL",1)~ THEN BEGIN 5
  SAY @1152
  IF ~~ THEN REPLY @1831 DO ~SetGlobal("TenyaHit","GLOBAL",2)
ChangeEnemyAlly(Myself,NEUTRAL)
ClearAllActions()
SetGlobal("TenyaStory","GLOBAL",1)~ UNSOLVED_JOURNAL @310094 GOTO 7
  IF ~~ THEN REPLY @1832 DO ~SetGlobal("TenyaHit","GLOBAL",2)
ChangeEnemyAlly(Myself,NEUTRAL)
ClearAllActions()
SetGlobal("TenyaStory","GLOBAL",1)
EraseJournalEntry(@310087)
EraseJournalEntry(@310089)
EraseJournalEntry(@310090)
EraseJournalEntry(@310092)
EraseJournalEntry(@310093)
EraseJournalEntry(@310094)
EraseJournalEntry(@310097)~ SOLVED_JOURNAL @310095 GOTO 16
  IF ~~ THEN REPLY @1833 DO ~SetGlobal("TenyaHit","GLOBAL",2)
SetGlobal("TenyaStory","GLOBAL",1)~ UNSOLVED_JOURNAL @310096 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1153
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1154
  IF ~~ THEN DO ~SetGlobal("HelpTenya","GLOBAL",1)~ EXIT
END

IF WEIGHT #3 ~Global("HelpTenya","GLOBAL",1)~ THEN BEGIN 8
  SAY @1155
  IF ~Dead("Jebadoh")
Dead("Telman")
Dead("Sonner")~ THEN REPLY @1835 GOTO 10
  IF ~PartyHasItem("MISC53")~ THEN REPLY @1836 GOTO 11
  IF ~~ THEN REPLY @1837 UNSOLVED_JOURNAL @310097 GOTO 9
  IF ~~ THEN REPLY @1838 UNSOLVED_JOURNAL @310096 GOTO 12
  IF ~~ THEN REPLY @1839 DO ~EraseJournalEntry(@310087)
EraseJournalEntry(@310089)
EraseJournalEntry(@310090)
EraseJournalEntry(@310092)
EraseJournalEntry(@310093)
EraseJournalEntry(@310094)
EraseJournalEntry(@310097)~ SOLVED_JOURNAL @310095 GOTO 13
END

IF ~~ THEN BEGIN 9
  SAY @1156
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1157
  IF ~~ THEN DO ~SetGlobal("HelpTenya","GLOBAL",2)
TakePartyItem("MISC53")
AddexperienceParty(2500)
SetGlobal("TalkedToTenya","GLOBAL",1)
EraseJournalEntry(@310087)
EraseJournalEntry(@310089)
EraseJournalEntry(@310090)
EraseJournalEntry(@310092)
EraseJournalEntry(@310093)
EraseJournalEntry(@310094)
EraseJournalEntry(@310097)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @310098 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1158
  IF ~~ THEN DO ~SetGlobal("HelpTenya","GLOBAL",2)
SetGlobal("TalkedToTenya","GLOBAL",1)
TakePartyItem("MISC53")
AddexperienceParty(2500)
ForceSpell(Myself,DRYAD_TELEPORT)
EraseJournalEntry(@310087)
EraseJournalEntry(@310089)
EraseJournalEntry(@310090)
EraseJournalEntry(@310092)
EraseJournalEntry(@310093)
EraseJournalEntry(@310094)
EraseJournalEntry(@310097)~ SOLVED_JOURNAL @310098 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1159
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @1160
  IF ~~ THEN DO ~SetGlobal("TalkedToTenya","GLOBAL",1)
SetGlobal("KillFishermen","GLOBAL",1)
ForceSpell(Myself,DRYAD_TELEPORT)
EraseJournalEntry(@310087)
EraseJournalEntry(@310089)
EraseJournalEntry(@310090)
EraseJournalEntry(@310092)
EraseJournalEntry(@310093)
EraseJournalEntry(@310094)
EraseJournalEntry(@310097)~ SOLVED_JOURNAL @310099 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @1825
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Global("HelpTenya","GLOBAL",0)~ THEN BEGIN 15
  SAY @1826
  IF ~~ THEN REPLY @1828 GOTO 2
  IF ~~ THEN REPLY @1829 GOTO 2
  IF ~~ THEN REPLY @1830 GOTO 1
END

IF ~~ THEN BEGIN 16
  SAY @1834
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~False()~ THEN BEGIN 17
  SAY @1840
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @1846 GOTO 19
  IF ~Dead("Jebadoh")
Dead("Sonner")
Dead("Telman")~ THEN REPLY @1847 GOTO 20
  IF ~~ THEN REPLY @1848 GOTO 22
  IF ~!Dead("Jebadoh")
!Dead("Sonner")
!Dead("Telman")~ THEN REPLY @1849 GOTO 20
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @1850 GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY @1841
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @1851 GOTO 19
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Dead("Jebadoh")
Dead("Sonner")
Dead("Telman")~ THEN REPLY @1852 GOTO 21
  IF ~~ THEN REPLY @1853 GOTO 22
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @1854 GOTO 20
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @1855 GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @1842
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @310229 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @1843
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
EscapeArea()~ UNSOLVED_JOURNAL @310230 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @1844
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @310229 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @1845
  IF ~~ THEN DO ~GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
Shout(1)
EscapeArea()~ UNSOLVED_JOURNAL @310230 EXIT
END

IF WEIGHT #6 ~False()~ THEN BEGIN 23
  SAY @1856
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @1857 GOTO 24
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @1858 GOTO 26
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @6333 GOTO 25
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @6334 GOTO 27
END

IF ~~ THEN BEGIN 24
  SAY @1859
  IF ~~ THEN DO ~Shout(1)
EscapeArea()~ UNSOLVED_JOURNAL @310231 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @1860
  IF ~~ THEN DO ~GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @310232 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @1861
  IF ~~ THEN DO ~GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)~ UNSOLVED_JOURNAL @310232 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @1862
  IF ~~ THEN DO ~Shout(1)
EscapeArea()~ UNSOLVED_JOURNAL @310231 EXIT
END

IF WEIGHT #7 ~False()~ THEN BEGIN 28
  SAY @6340
  IF ~~ THEN JOURNAL @310795 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 29
  SAY @6925
  IF ~~ THEN EXIT
END
