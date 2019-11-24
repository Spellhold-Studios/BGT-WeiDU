BEGIN ~karoug~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21134
  IF ~~ THEN REPLY @21135 GOTO 1
  IF ~~ THEN REPLY @21136 GOTO 2
  IF ~~ THEN REPLY @21138 GOTO 3
  IF ~~ THEN REPLY @21141 GOTO 4
  IF ~~ THEN REPLY @21147 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @21148
  IF ~~ THEN REPLY @21150 GOTO 5
  IF ~~ THEN REPLY @21152 GOTO 2
  IF ~~ THEN REPLY @21155 GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @21158
  IF ~~ THEN DO ~ActionOverride("Daese",Enemy())
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[157.415],0)
CreateCreature("WOLFWEGL",[157.415],0)
ForceSpellRES("BGWI947",Myself)
EraseJournalEntry(@310659)
EraseJournalEntry(@310660)
EraseJournalEntry(@310661)
EraseJournalEntry(@310662)
EraseJournalEntry(@310667)
EraseJournalEntry(@310668)~ SOLVED_JOURNAL @310669 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21162
  IF ~~ THEN REPLY @21164 GOTO 10
  IF ~~ THEN REPLY @21166 GOTO 2
  IF ~~ THEN REPLY @21189 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @21190
  IF ~~ THEN DO ~ActionOverride("Daese",Enemy())
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[157.415],0)
CreateCreature("WOLFWEGL",[157.415],0)
ForceSpellRES("BGWI947",Myself)
EraseJournalEntry(@310659)
EraseJournalEntry(@310660)
EraseJournalEntry(@310661)
EraseJournalEntry(@310662)
EraseJournalEntry(@310667)
EraseJournalEntry(@310668)~ SOLVED_JOURNAL @310669 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21191
  IF ~~ THEN REPLY @21194 GOTO 8
  IF ~Global("MaraQuest","GLOBAL",1)~ THEN REPLY @21196 GOTO 14
  IF ~~ THEN REPLY @21197 GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY @21199
  IF ~~ THEN DO ~SetGlobal("TalkedToKaroug","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21203
  IF ~~ THEN DO ~ActionOverride("Daese",Enemy())
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[157.415],0)
CreateCreature("WOLFWEGL",[157.415],0)
ForceSpellRES("BGWI947",Myself)
EraseJournalEntry(@310659)
EraseJournalEntry(@310660)
EraseJournalEntry(@310661)
EraseJournalEntry(@310662)
EraseJournalEntry(@310667)
EraseJournalEntry(@310668)~ SOLVED_JOURNAL @310669 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @21205
  IF ~~ THEN REPLY @21208 GOTO 7
  IF ~~ THEN REPLY @21209 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @21210
  IF ~~ THEN DO ~ActionOverride("Daese",Enemy())
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[157.415],0)
CreateCreature("WOLFWEGL",[157.415],0)
ForceSpellRES("BGWI947",Myself)
EraseJournalEntry(@310659)
EraseJournalEntry(@310660)
EraseJournalEntry(@310661)
EraseJournalEntry(@310662)
EraseJournalEntry(@310667)
EraseJournalEntry(@310668)~ SOLVED_JOURNAL @310669 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @21214
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @21215
  IF ~~ THEN REPLY @21216 GOTO 4
  IF ~~ THEN REPLY @21218 GOTO 13
END

IF ~Global("TalkedToKaroug","GLOBAL",1)~ THEN BEGIN 12
  SAY @21223
  IF ~~ THEN DO ~ActionOverride("Daese",Enemy())
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[157.415],0)
CreateCreature("WOLFWEGL",[157.415],0)
ForceSpellRES("BGWI947",Myself)
EraseJournalEntry(@310659)
EraseJournalEntry(@310660)
EraseJournalEntry(@310661)
EraseJournalEntry(@310662)
EraseJournalEntry(@310667)
EraseJournalEntry(@310668)~ SOLVED_JOURNAL @310669 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @21225
  IF ~~ THEN DO ~ActionOverride("Daese",Enemy())
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[135.454],0)
CreateCreature("WOLFWEGL",[157.415],0)
CreateCreature("WOLFWEGL",[157.415],0)
ForceSpellRES("BGWI947",Myself)
EraseJournalEntry(@310659)
EraseJournalEntry(@310660)
EraseJournalEntry(@310661)
EraseJournalEntry(@310662)
EraseJournalEntry(@310667)
EraseJournalEntry(@310668)~ SOLVED_JOURNAL @310669 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @23539
  IF ~~ THEN REPLY @23541 GOTO 13
  IF ~~ THEN REPLY @23542 GOTO 9
END
