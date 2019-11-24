BEGIN ~kieres~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22046
  IF ~~ THEN REPLY @22054 GOTO 1
  IF ~ReactionGT(LastTalkedToBy,14)~ THEN REPLY @22055 GOTO 2
  IF ~ReactionLT(LastTalkedToBy,15)~ THEN REPLY @22056 GOTO 3
  IF ~~ THEN REPLY @22057 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @22047
  IF ~~ THEN DO ~SetGlobal("tranion","GLOBAL",1)~ UNSOLVED_JOURNAL @310649 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @22048
  IF ~~ THEN DO ~EraseJournalEntry(@310645)
EraseJournalEntry(@310649)
EraseJournalEntry(@310650)
EraseJournalEntry(@310651)~ SOLVED_JOURNAL @310652 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @22049
  IF ~~ THEN DO ~Enemy()
ActionOverride("leaggu1",Enemy())
ActionOverride("leaggu1",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu2",Enemy())
ActionOverride("leaggu2",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu3",Enemy())
ActionOverride("leaggu3",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu4",Enemy())
ActionOverride("leaggu4",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu5",Enemy())
ActionOverride("leaggu5",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu6",Enemy())
ActionOverride("leaggu6",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu7",Enemy())
ActionOverride("leaggu7",AttackReevaluate(LastTalkedToBy("kieres"),8))
EraseJournalEntry(@310645)
EraseJournalEntry(@310649)
EraseJournalEntry(@310650)
EraseJournalEntry(@310651)~ SOLVED_JOURNAL @310653 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @22050
  IF ~~ THEN DO ~Enemy()
ActionOverride("leaggu1",Enemy())
ActionOverride("leaggu1",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu2",Enemy())
ActionOverride("leaggu2",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu3",Enemy())
ActionOverride("leaggu3",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu4",Enemy())
ActionOverride("leaggu4",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu5",Enemy())
ActionOverride("leaggu5",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu6",Enemy())
ActionOverride("leaggu6",AttackReevaluate(LastTalkedToBy("kieres"),8))
ActionOverride("leaggu7",Enemy())
ActionOverride("leaggu7",AttackReevaluate(LastTalkedToBy("kieres"),8))
EraseJournalEntry(@310645)
EraseJournalEntry(@310649)
EraseJournalEntry(@310650)
EraseJournalEntry(@310651)~ SOLVED_JOURNAL @310653 EXIT
END

IF WEIGHT #2 ~Exists("Detranion")~ THEN BEGIN 5
  SAY @22051
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~PartyHasItem("misc97")~ THEN BEGIN 6
  SAY @22052
  IF ~~ THEN REPLY @22058 DO ~TakePartyItem("misc97")~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @22053
  IF ~~ THEN DO ~GiveItem("MISC1C",LastTalkedToBy)
EraseJournalEntry(@310645)
EraseJournalEntry(@310649)
EraseJournalEntry(@310650)
EraseJournalEntry(@310651)~ SOLVED_JOURNAL @310652 EXIT
END

IF WEIGHT #3 ~True()~ THEN BEGIN 8
  SAY @22085
  IF ~~ THEN EXIT
END
