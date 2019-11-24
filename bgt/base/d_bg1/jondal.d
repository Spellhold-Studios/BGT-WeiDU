BEGIN ~jondal~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @17631
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @17636
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @17637
  IF ~~ THEN DO ~CreateCreature("ERIK",[4185.1114],0)
ActionOverride("Erik",Enemy())
Enemy()~ EXIT
END

IF ~Global("JonHit","GLOBAL",1)~ THEN BEGIN 3
  SAY @17638
  IF ~~ THEN DO ~SetGlobal("JonHit","GLOBAL",2)
ChangeEnemyAlly(Myself,NEUTRAL)
ChangeEnemyAlly("Erik",NEUTRAL)
ClearAllActions()
ActionOverride("Erik",EscapeArea())
EscapeArea()~ EXIT
END
