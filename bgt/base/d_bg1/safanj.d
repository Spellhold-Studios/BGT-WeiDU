BEGIN ~safanj~

IF WEIGHT #2 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 0
  SAY @16652
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 1
  SAY @16653
  IF ~~ THEN DO ~LeaveParty()
SetDialog("SafanP")~ EXIT
END

IF WEIGHT #0 ~GlobalTimerExpired("Safana","GLOBAL")
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("PirateTreasure","GLOBAL",0)
!PartyHasItem("BOOK03")~ THEN BEGIN 2
  SAY @16771
  IF ~~ THEN DO ~SetGlobal("PirateTreasure","GLOBAL",1)~ EXIT
END

IF WEIGHT #1 ~GlobalLT("PirateTreasure","GLOBAL",2)
GlobalLT("ENDOFBG1","GLOBAL",2)
PartyHasItem("BOOK03")~ THEN BEGIN 3
  SAY @16773
  IF ~~ THEN REPLY @16774 DO ~SetGlobal("PirateTreasure","GLOBAL",2)~ GOTO 4
  IF ~~ THEN REPLY @16775 DO ~SetGlobal("PirateTreasure","GLOBAL",2)~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @16776
  IF ~~ THEN DO ~EraseJournalEntry(@310297)
EraseJournalEntry(@311297)
LeaveParty()
EscapeArea()~ SOLVED_JOURNAL @310298 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16777
  IF ~~ THEN DO ~EraseJournalEntry(@310297)
EraseJournalEntry(@311297)~ SOLVED_JOURNAL @310299 EXIT
END
