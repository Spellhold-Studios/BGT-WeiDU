BEGIN ~gellan~

IF ~!PartyHasItem("MISC13")~ THEN BEGIN 0
  SAY @5271
  IF ~~ THEN REPLY @15583 DO ~StartStore("tem2304",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15584 EXIT
END

IF ~PartyHasItem("MISC13")~ THEN BEGIN 1
  SAY @5277
  IF ~~ THEN REPLY @5278 EXIT
  IF ~!GlobalTimerExpired("Samuel","GLOBAL")~ THEN REPLY @5279 GOTO 2
  IF ~GlobalTimerExpired("Samuel","GLOBAL")~ THEN REPLY @5293 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @5282
  IF ~!GlobalTimerExpired("Samuel","GLOBAL")~ THEN DO ~AddexperienceParty(500)
ReputationInc(1)
TakePartyItem("MISC13")
GiveItem("POTN09",LastTalkedToBy)
GiveItem("POTN17",LastTalkedToBy)
EraseJournalEntry(@310155)
EraseJournalEntry(@310156)~ SOLVED_JOURNAL @310158 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5292
  IF ~GlobalTimerExpired("Samuel","GLOBAL")~ THEN DO ~TakePartyItem("MISC13")
EraseJournalEntry(@310155)
EraseJournalEntry(@310156)~ SOLVED_JOURNAL @310159 EXIT
END
