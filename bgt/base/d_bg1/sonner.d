BEGIN ~sonner~

IF ~~ THEN BEGIN 0
  SAY @1126
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1127
  IF ~~ THEN EXTERN ~JEBADO~ 3
END

IF ~~ THEN BEGIN 2
  SAY @1128
  IF ~~ THEN EXTERN ~JEBADO~ 3
END

IF ~~ THEN BEGIN 3
  SAY @1129
  IF ~~ THEN EXTERN ~JEBADO~ 3
END

IF ~~ THEN BEGIN 4
  SAY @1130
  IF ~~ THEN REPLY @1798 GOTO 5
  IF ~~ THEN REPLY @1799 GOTO 6
  IF ~~ THEN REPLY @1800 EXTERN ~JEBADO~ 4
END

IF ~~ THEN BEGIN 5
  SAY @1131
  IF ~~ THEN DO ~SetGlobal("HelpJebadoh","GLOBAL",1)~ UNSOLVED_JOURNAL @310087 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1132
  IF ~~ THEN EXTERN ~TELMAN~ 2
END

IF ~~ THEN BEGIN 7
  SAY @1133
  IF ~~ THEN REPLY @1807 GOTO 5
  IF ~~ THEN REPLY @1808 SOLVED_JOURNAL @310088 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @1134
  IF ~~ THEN DO ~SetGlobal("HelpJebadoh","GLOBAL",2)
ActionOverride("Telman",EscapeArea())
ActionOverride("Jebadoh",EscapeArea())
EscapeArea()~ EXIT
END

IF WEIGHT #5 ~Global("HelpJebadoh","GLOBAL",2)~ THEN BEGIN 9
  SAY @1135
  IF ~~ THEN REPLY @1809 GOTO 5
  IF ~~ THEN REPLY @1810 SOLVED_JOURNAL @310088 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @1136
  IF ~~ THEN DO ~ActionOverride("Telman",EscapeArea())
ActionOverride("Jebadoh",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1137
  IF ~~ THEN REPLY @1811 DO ~IncrementGlobal("FisherPrice","GLOBAL",100)~ GOTO 19
  IF ~Global("TenyaStory","GLOBAL",1)~ THEN REPLY @1812 EXTERN ~TELMAN~ 6
  IF ~~ THEN REPLY @1813 EXTERN ~JEBADO~ 4
END

IF ~~ THEN BEGIN 12
  SAY @1138
  IF ~~ THEN REPLY @1814 DO ~IncrementGlobal("FisherPrice","GLOBAL",50)~ GOTO 19
  IF ~Global("TenyaStory","GLOBAL",1)~ THEN REPLY @1815 EXTERN ~TELMAN~ 6
  IF ~~ THEN REPLY @1816 EXTERN ~JEBADO~ 4
END

IF ~~ THEN BEGIN 13
  SAY @1139
  IF ~~ THEN DO ~SetGlobal("HostileFishermen","GLOBAL",1)~ SOLVED_JOURNAL @310088 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @1140
  IF ~~ THEN REPLY @1818 UNSOLVED_JOURNAL @310089 GOTO 15
  IF ~~ THEN REPLY @1819 DO ~IncrementGlobal("FisherPrice","GLOBAL",100)~ UNSOLVED_JOURNAL @310090 GOTO 19
  IF ~~ THEN REPLY @1820 SOLVED_JOURNAL @310091 GOTO 13
END

IF ~~ THEN BEGIN 15
  SAY @1141
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @1142
  IF ~~ THEN DO ~GiveItem("MISC53",[PC])~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @1143
  IF ~~ THEN DO ~GiveItem("MISC53",[PC])
SetGlobal("HostileFishermen","GLOBAL",1)
~ SOLVED_JOURNAL @310092 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @1144
  IF ~~ THEN DO ~GivePartyGoldGlobal("FisherPrice","GLOBAL")
AddexperienceParty(1000)
GiveItem("BLUN03",[PC])
EraseJournalEntry(@310087)
EraseJournalEntry(@310089)
EraseJournalEntry(@310090)
EraseJournalEntry(@310092)
EraseJournalEntry(@310093)
EraseJournalEntry(@310094)
EraseJournalEntry(@310097)
ActionOverride("Telman",EscapeArea())
ActionOverride("Jebadoh",EscapeArea())
EscapeArea()~ SOLVED_JOURNAL @311092 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @1817
  IF ~~ THEN UNSOLVED_JOURNAL @310093 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @417
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 21
  SAY @6921
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @9003
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 23
  SAY @142
  IF ~~ THEN DO ~ActionOverride("Jebadoh",SetNumTimesTalkedTo(1))
ActionOverride("Telman",SetNumTimesTalkedTo(1))~ EXTERN ~JEBADO~ 0
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 24
  SAY @622
  IF ~~ THEN DO ~ActionOverride("Jebadoh",SetNumTimesTalkedTo(1))
ActionOverride("Telman",SetNumTimesTalkedTo(1))~ EXTERN ~JEBADO~ 1
END

IF WEIGHT #4 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 25
  SAY @629
  IF ~~ THEN DO ~ActionOverride("Jebadoh",SetNumTimesTalkedTo(1))
ActionOverride("Telman",SetNumTimesTalkedTo(1))~ EXTERN ~JEBADO~ 2
END

IF WEIGHT #6 ~Global("HelpJebadoh","GLOBAL",1)~ THEN BEGIN 26
  SAY @1035
  IF ~~ THEN EXTERN ~TELMAN~ 3
END
