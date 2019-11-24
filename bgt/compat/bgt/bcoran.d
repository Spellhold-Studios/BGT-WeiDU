BEGIN ~bcoran~

IF ~InteractingWith("Safana")
RandomNum(8,1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s0
  SAY @14414
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Safana")
RandomNum(8,2)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s1
  SAY @14415
  IF ~~ THEN EXTERN ~BSAFAN~ 0
END

IF ~InteractingWith("Safana")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(8,3)~ THEN BEGIN s2
  SAY @14416
  IF ~~ THEN EXTERN ~BSAFAN~ 1
END

IF ~InteractingWith("Safana")
RandomNum(8,4)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s3
  SAY @14417
  IF ~~ THEN EXTERN ~BSAFAN~ 2
END

IF ~InteractingWith("Safana")
RandomNum(8,5)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s4
  SAY @14418
  IF ~~ THEN EXTERN ~BSAFAN~ 4
END

IF ~InteractingWith("Safana")
RandomNum(8,6)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s5
  SAY @14517
  IF ~~ THEN EXTERN ~BSAFAN~ 1
END

IF ~InteractingWith("Safana")
RandomNum(8,7)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s6
  SAY @14518
  IF ~~ THEN EXTERN ~BSAFAN~ 3
END

IF ~InteractingWith("Safana")
RandomNum(8,8)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s7
  SAY @14519
  IF ~~ THEN EXTERN ~BSAFAN~ 3
END

IF ~InteractingWith("Safana")
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN s8
  SAY @14520
  IF ~~ THEN EXTERN ~BSAFAN~ 5
END
