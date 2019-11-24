BEGIN ~cutsar~

IF ~True()~ THEN BEGIN 0
  SAY @13822
  IF ~~ THEN EXTERN ~CUTGOR~ 0
END

IF ~~ THEN BEGIN 1
  SAY @13823
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ch1cut04")~ EXIT
END
