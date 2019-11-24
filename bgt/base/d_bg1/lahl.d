BEGIN ~lahl~

IF ~Global("Kaishas1","GLOBAL",0)~ THEN BEGIN 0
  SAY @21169
  IF ~~ THEN UNSOLVED_JOURNAL @310658 EXIT
END

IF ~Global("Kaishas1","GLOBAL",1)
RandomNum(7,1)
!Dead("karoug")~ THEN BEGIN 1
  SAY @21170
  IF ~~ THEN REPLY @21180 GOTO 2
  IF ~~ THEN REPLY @21181 EXIT
END

IF ~Global("Kaishas1","GLOBAL",1)
RandomNum(7,2)
!Dead("karoug")~ THEN BEGIN 2
  SAY @21171
  IF ~~ THEN REPLY @21178 GOTO 3
  IF ~~ THEN REPLY @21179 GOTO 4
END

IF ~Global("Kaishas1","GLOBAL",1)
RandomNum(7,3)
!Dead("karoug")~ THEN BEGIN 3
  SAY @21172
  IF ~~ THEN REPLY @21182 GOTO 5
  IF ~~ THEN REPLY @21183 GOTO 7
END

IF ~Global("Kaishas1","GLOBAL",1)
RandomNum(7,4)
!Dead("karoug")~ THEN BEGIN 4
  SAY @21173
  IF ~~ THEN UNSOLVED_JOURNAL @310688 EXIT
END

IF ~Global("Kaishas1","GLOBAL",1)
RandomNum(7,5)
!Dead("karoug")~ THEN BEGIN 5
  SAY @21174
  IF ~~ THEN UNSOLVED_JOURNAL @310689 EXIT
END

IF ~Global("Kaishas1","GLOBAL",1)
RandomNum(7,6)
!Dead("karoug")~ THEN BEGIN 6
  SAY @21175
  IF ~~ THEN EXIT
END

IF ~Global("Kaishas1","GLOBAL",1)
RandomNum(7,7)
!Dead("karoug")~ THEN BEGIN 7
  SAY @21176
  IF ~~ THEN UNSOLVED_JOURNAL @310689 EXIT
END

IF ~Dead("karoug")
Global("Kaishas1","GLOBAL",1)~ THEN BEGIN 8
  SAY @21177
  IF ~~ THEN DO ~EraseJournalEntry(@310688)
EraseJournalEntry(@310689)~ SOLVED_JOURNAL @310690 EXIT
END
