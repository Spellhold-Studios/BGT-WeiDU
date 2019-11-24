BEGIN ~jaheir~

IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
GlobalLT("ENDOFBG1","GLOBAL",2)
NumTimesTalkedTo(0)
!Dead("Khalid")~ THEN BEGIN 0
  SAY @294
  IF ~~ THEN DO ~SetGlobal("SpokeToKhalid","GLOBAL",1)~ EXTERN ~KHALID~ 0
END

IF ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!Dead("Khalid")~ THEN BEGIN 1
  SAY @295
  IF ~~ THEN DO ~SetGlobal("SpokeToKhalid","GLOBAL",1)~ EXTERN ~KHALID~ 0
END

IF ~~ THEN BEGIN 2
  SAY @296
  IF ~~ THEN EXTERN ~KHALID~ 4
END

IF ~~ THEN BEGIN 3
  SAY @297
  IF ~~ THEN EXTERN ~KHALID~ 2
END

IF ~~ THEN BEGIN 4
  SAY @298
  IF ~~ THEN EXTERN ~KHALID~ 3
END

IF ~~ THEN BEGIN 5
  SAY @299
  IF ~~ THEN REPLY @312 GOTO 6
  IF ~~ THEN REPLY @313 GOTO 7
  IF ~InParty("Xzar")
InParty("Montaron")~ THEN REPLY @314 GOTO 8
  IF ~!InParty("Xzar")
InParty("Montaron")~ THEN REPLY @16713 GOTO 14
  IF ~InParty("Xzar")
!InParty("Montaron")~ THEN REPLY @16714 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @300
  IF ~~ THEN DO ~SetGlobalTimer("Jaheira","GLOBAL",FOUR_DAYS)
SetGlobalTimer("Khalid","GLOBAL",TWELVE_DAYS)
ActionOverride("Khalid",JoinParty())
JoinParty()~ JOURNAL @310788 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @301
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @302
  IF ~~ THEN DO ~SetGlobalTimer("Jaheira","GLOBAL",FOUR_DAYS)
SetGlobalTimer("Khalid","GLOBAL",TWELVE_DAYS)
ActionOverride("Khalid",JoinParty())
JoinParty()~ JOURNAL @310788 EXIT
END

IF WEIGHT #0 ~Global("SpokeToKhalid","GLOBAL",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 9
  SAY @15439
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 10
  SAY @16093
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 11
  SAY @16094
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 12
  SAY @16095
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 13
  SAY @16096
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @16715
  IF ~~ THEN DO ~SetGlobalTimer("Jaheira","GLOBAL",FOUR_DAYS)
SetGlobalTimer("Khalid","GLOBAL",TWELVE_DAYS)
ActionOverride("Khalid",JoinParty())
JoinParty()~ EXIT
END
