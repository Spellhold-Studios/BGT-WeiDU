BEGIN ~bgarri~

IF ~InteractingWith("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 0
  SAY @14440
  IF ~~ THEN EXTERN ~BSKIE~ 3
END

IF ~InteractingWith("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Eldoth")
See("Eldoth")
RandomNum(3,1)~ THEN BEGIN 1
  SAY @14441
  IF ~~ THEN EXTERN ~BSKIE~ 4
END

IF ~~ THEN BEGIN 2
  SAY @14442
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @14443
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Minsc")
See("Minsc")~ THEN BEGIN 4
  SAY @14444
  IF ~~ THEN EXTERN ~BSKIE~ 6
END

IF ~InteractingWith("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Eldoth")
See("Eldoth")
RandomNum(3,2)~ THEN BEGIN 5
  SAY @14552
  IF ~~ THEN EXTERN ~BSKIE~ 5
END

IF ~InteractingWith("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Eldoth")
See("Eldoth")
RandomNum(3,3)~ THEN BEGIN 6
  SAY @14553
  IF ~~ THEN EXTERN ~BSKIE~ 7
END

IF ~InteractingWith("Skie")
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty("Eldoth")
See("Eldoth")~ THEN BEGIN 7
  SAY @14554
  IF ~~ THEN EXTERN ~BSKIE~ 8
END
