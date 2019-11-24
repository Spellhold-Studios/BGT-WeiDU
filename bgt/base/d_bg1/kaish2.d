BEGIN ~kaish2~

IF ~True()~ THEN BEGIN 0
  SAY @23783
  IF ~~ THEN REPLY @23787 GOTO 1
  IF ~~ THEN REPLY @23788 GOTO 2
  IF ~~ THEN REPLY @23789 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @23784
  IF ~~ THEN DO ~ForceSpellRES("BGWI925",Myself)
Enemy()
EraseJournalEntry(@310656)
EraseJournalEntry(@310657)
EraseJournalEntry(@310658)
EraseJournalEntry(@310665)
EraseJournalEntry(@310666)
EraseJournalEntry(@310670)
EraseJournalEntry(@310671)
EraseJournalEntry(@310681)
EraseJournalEntry(@310694)
EraseJournalEntry(@310695)
EraseJournalEntry(@310700)
EraseJournalEntry(@310701)
EraseJournalEntry(@310702)
EraseJournalEntry(@310703)~ SOLVED_JOURNAL @310672 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23785
  IF ~~ THEN DO ~ForceSpellRES("BGWI925",Myself)
Enemy()
EraseJournalEntry(@310656)
EraseJournalEntry(@310657)
EraseJournalEntry(@310658)
EraseJournalEntry(@310665)
EraseJournalEntry(@310666)
EraseJournalEntry(@310670)
EraseJournalEntry(@310671)
EraseJournalEntry(@310681)
EraseJournalEntry(@310694)
EraseJournalEntry(@310695)
EraseJournalEntry(@310700)
EraseJournalEntry(@310701)
EraseJournalEntry(@310702)
EraseJournalEntry(@310703)~ SOLVED_JOURNAL @310673 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23786
  IF ~~ THEN DO ~ForceSpellRES("BGWI925",Myself)
Enemy()
EraseJournalEntry(@310656)
EraseJournalEntry(@310657)
EraseJournalEntry(@310658)
EraseJournalEntry(@310665)
EraseJournalEntry(@310666)
EraseJournalEntry(@310670)
EraseJournalEntry(@310671)
EraseJournalEntry(@310681)
EraseJournalEntry(@310694)
EraseJournalEntry(@310695)
EraseJournalEntry(@310700)
EraseJournalEntry(@310701)
EraseJournalEntry(@310702)
EraseJournalEntry(@310703)~ SOLVED_JOURNAL @310674 EXIT
END
