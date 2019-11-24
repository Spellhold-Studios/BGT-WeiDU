BEGIN ~korax~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4632
  IF ~~ THEN REPLY @4634 DO ~Enemy()~ GOTO 1
  IF ~~ THEN REPLY @4636 DO ~EscapeArea()~ GOTO 2
  IF ~~ THEN REPLY @4638 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @4639
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4664
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4665
  IF ~~ THEN DO ~SetGlobalTimer("KoraxHostile","GLOBAL",600)
ChangeEnemyAlly(Myself,ALLY)
ApplySpell(Myself,CHARM_KORAX)~ EXIT
END
