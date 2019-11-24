BEGIN ~bfaldo~

IF ~InteractingWith("Jaheira")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(3,1)~ THEN BEGIN 0
  SAY @14435
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Jaheira")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(3,2)~ THEN BEGIN 1
  SAY @14436
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Jaheira")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(3,3)~ THEN BEGIN 2
  SAY @14437
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Jaheira")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 3
  SAY @14438
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @14439
  IF ~~ THEN EXIT
END
