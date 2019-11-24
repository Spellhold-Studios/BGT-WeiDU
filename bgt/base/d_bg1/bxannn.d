BEGIN ~bxannn~

IF ~InteractingWith("Eldoth")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(2,1)~ THEN BEGIN 0
  SAY @14386
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Eldoth")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(2,2)~ THEN BEGIN 1
  SAY @14387
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Eldoth")
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 2
  SAY @14388
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @14389
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @14390
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 5
  SAY @14395
  IF ~~ THEN DO ~~ EXIT
END
