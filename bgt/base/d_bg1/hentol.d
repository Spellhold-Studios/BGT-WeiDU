BEGIN ~hentol~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8671
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @8672
  IF ~~ THEN REPLY @8673 GOTO 7
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @8674 GOTO 3
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @8675 GOTO 4
  IF ~~ THEN REPLY @8676 GOTO 5
  IF ~~ THEN REPLY @8677 GOTO 6
END

IF WEIGHT #3 ~NumTimesTalkedTo(1)
Global("HelpHentold","GLOBAL",0)~ THEN BEGIN 2
  SAY @8678
  IF ~~ THEN REPLY @8679 GOTO 7
  IF ~~ THEN REPLY @8680 GOTO 6
  IF ~~ THEN REPLY @8681 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @8682
  IF ~~ THEN DO ~SetGlobal("HelpHentold","GLOBAL",1)
GiveItem("DAGG03",LastTalkedToBy)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8683
  IF ~~ THEN DO ~SetGlobal("HelpHentold","GLOBAL",1)
GiveItem("DAGG03",LastTalkedToBy)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8684
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8685
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8686
  IF ~~ THEN REPLY @8691 GOTO 9
  IF ~~ THEN REPLY @8692 GOTO 8
  IF ~~ THEN REPLY @8694 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @8687
  IF ~~ THEN DO ~SetGlobal("HelpHentold","GLOBAL",1)
GiveItem("DAGG03",LastTalkedToBy)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @8688
  IF ~~ THEN DO ~SetGlobal("HelpHentold","GLOBAL",1)
GiveItem("DAGG03",LastTalkedToBy)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8689
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8690
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
HasItem("DAGG03",Myself)~ THEN BEGIN 12
  SAY @8855
  IF ~~ THEN DO ~SetGlobal("HelpHentold","GLOBAL",1)
GiveItem("DAGG03",LastTalkedToBy)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @9265
  IF ~~ THEN EXIT
END
