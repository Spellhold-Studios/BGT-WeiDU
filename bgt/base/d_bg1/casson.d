BEGIN ~casson~

IF ~Global("TremainMove","GLOBAL",2)~ THEN BEGIN 0
  SAY @12674
  IF ~~ THEN EXTERN ~TREMAI~ 13
END

IF ~~ THEN BEGIN 1
  SAY @12675
  IF ~~ THEN EXTERN ~TREMAI~ 14
END

IF ~~ THEN BEGIN 2
  SAY @12676
  IF ~~ THEN EXTERN ~TREMAI~ 15
END

IF ~~ THEN BEGIN 3
  SAY @12677
  IF ~~ THEN EXTERN ~TREMAI~ 16
END

IF ~~ THEN BEGIN 4
  SAY @12678
  IF ~~ THEN DO ~SetGlobal("TremainMove","GLOBAL",3)
ActionOverride("Tremain",MoveToPoint([486.465]))
ActionOverride("Tremain",DestroySelf())
MoveToPoint([486.465])
DestroySelf()~ EXIT
END
