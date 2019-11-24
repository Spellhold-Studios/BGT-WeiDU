BEGIN ~erik~

IF ~Global("JonHit","GLOBAL",1)~ THEN BEGIN 0
  SAY @17639
  IF ~~ THEN DO ~SetGlobal("JonHit","GLOBAL",2)
ChangeEnemyAlly(Myself,NEUTRAL)
ChangeEnemyAlly("Jondal",NEUTRAL)
ClearAllActions()
ActionOverride("Jondal",EscapeArea())
EscapeArea()~ EXIT
END
