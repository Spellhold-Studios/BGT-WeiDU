BEGIN ~monken~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7410
  IF ~PartyGoldGT(0)~ THEN REPLY @7411 DO ~TakePartyGold(1000000)
SetGlobal("BribeEnforcer","GLOBAL",1)
Shout(2)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY @7412 DO ~Shout(1)
Enemy()~ EXIT
  IF ~~ THEN REPLY @16356 GOTO 3
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @7413
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9154
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @16357
  IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END
