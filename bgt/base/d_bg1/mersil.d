BEGIN ~mersil~

IF ~~ THEN BEGIN 0
  SAY @786
  IF ~~ THEN EXTERN ~CUTSILK~ 1
END

IF ~~ THEN BEGIN 1
  SAY @787
  IF ~~ THEN EXTERN ~CUTSILK~ 2
END

IF ~~ THEN BEGIN 2
  SAY @788
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @6300
  IF ~~ THEN EXIT
END

IF ~Global("TalkedToMerchant","GLOBAL",0)
Global("SilkeFightOver","GLOBAL",1)~ THEN BEGIN 4
  SAY @6301
  IF ~~ THEN DO ~SetGlobal("TalkedToMerchant","GLOBAL",1)
GiveItemCreate("POTN24",LastTalkedToBy,1,0,0)
ActionOverride("Merchant1",EscapeAreaDestroy(5))
ActionOverride("Merchant2",EscapeAreaDestroy(5))
ActionOverride("Merchant3",EscapeAreaDestroy(5))
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9161
  IF ~~ THEN EXIT
END
