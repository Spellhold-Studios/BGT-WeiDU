BEGIN ~taerom~

IF WEIGHT #6 ~PartyHasItem("MISC12")
Global("MakeArmor","GLOBAL",0)~ THEN BEGIN 0
  SAY @107
  IF ~~ THEN REPLY @192 DO ~SetGlobalTimer("Taerom","GLOBAL",TEN_DAYS)~ GOTO 6
  IF ~~ THEN REPLY @193 GOTO 1
  IF ~~ THEN REPLY @194 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @180
  IF ~~ THEN DO ~SetGlobal("MakeArmor","GLOBAL",2)
TakePartyItem("MISC12")
EraseJournalEntry(@310039)
EraseJournalEntry(@310040)
EraseJournalEntry(@310041)
GiveGoldForce(500)~ SOLVED_JOURNAL @310038 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @181
  IF ~~ THEN REPLY @195 GOTO 1
  IF ~~ THEN REPLY @196 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @182
  IF ~~ THEN DO ~SetGlobal("ShellRotting","GLOBAL",1)~ UNSOLVED_JOURNAL @310039 EXIT
END

IF WEIGHT #1 ~GlobalTimerNotExpired("Taerom","GLOBAL")
PartyHasItem("MISC12")
Global("MakeArmor","GLOBAL",0)~ THEN BEGIN 4
  SAY @183
  IF ~~ THEN REPLY @197 GOTO 6
  IF ~~ THEN REPLY @198 GOTO 1
  IF ~~ THEN REPLY @199 GOTO 2
END

IF WEIGHT #2 ~Global("ShellRotting","GLOBAL",1)
GlobalTimerExpired("Taerom","GLOBAL")
PartyHasItem("MISC12")
Global("MakeArmor","GLOBAL",0)~ THEN BEGIN 5
  SAY @184
  IF ~~ THEN DO ~SetGlobal("ShellRotting","GLOBAL",0)
TakePartyItem("MISC12")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @185
  IF ~~ THEN REPLY @200 GOTO 11
  IF ~PartyGoldGT(3999)~ THEN REPLY @201 GOTO 7
  IF ~~ THEN REPLY @202 DO ~SetGlobal("TaeromRidiculous","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @186
  IF ~~ THEN DO ~TakePartyGold(4000)
TakePartyItem("MISC12")
SetGlobal("MakeArmor","GLOBAL",1)
SetGlobalTimer("Taerom2","GLOBAL",TEN_DAYS)~ UNSOLVED_JOURNAL @310040 EXIT
END

IF WEIGHT #3 ~!GlobalTimerExpired("Taerom2","GLOBAL")
Global("MakeArmor","GLOBAL",1)~ THEN BEGIN 8
  SAY @187
  IF ~~ THEN DO ~StartStore("Taerum",LastTalkedToBy())~ UNSOLVED_JOURNAL @310040 EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom2","GLOBAL")
Global("MakeArmor","GLOBAL",1)~ THEN BEGIN 9
  SAY @188
  IF ~~ THEN DO ~GiveItemCreate("PLAT06",LastTalkedToBy,0,0,0)
DestroyItem("MISC12")
SetGlobal("MakeArmor","GLOBAL",2)
EraseJournalEntry(@310039)
EraseJournalEntry(@310040)
EraseJournalEntry(@310041)~ SOLVED_JOURNAL @310042 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @189
  IF ~~ THEN DO ~SetGlobal("ShellRotting","GLOBAL",1)~ UNSOLVED_JOURNAL @310041 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @190
  IF ~~ THEN DO ~SetGlobal("ShellRotting","GLOBAL",1)~ UNSOLVED_JOURNAL @310041 EXIT
END

IF WEIGHT #5 ~!GlobalTimerExpired("Taerom","GLOBAL")
Global("TaeromRidiculous","GLOBAL",1)
PartyHasItem("MISC12")
Global("MakeArmor","GLOBAL",0)~ THEN BEGIN 12
  SAY @191
  IF ~~ THEN REPLY @203 GOTO 1
  IF ~PartyGoldGT(3999)~ THEN REPLY @204 GOTO 7
  IF ~~ THEN REPLY @205 GOTO 15
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 13
  SAY @6413
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~True()~ THEN BEGIN 14
  SAY @15266
  IF ~~ THEN REPLY @15267 DO ~StartStore("Taerum",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15268 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @203402
  IF ~~ THEN EXIT
END
