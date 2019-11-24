BEGIN ~daerragh~

IF ~GlobalGT("DAERRAGH","GLOBAL",2)~ THEN BEGIN 0
  SAY @10965
  IF ~~ THEN DO ~ForceSpell(Myself,DAERRAGH)~ EXIT
END

IF ~True()~ THEN BEGIN 1
  SAY @11874
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
