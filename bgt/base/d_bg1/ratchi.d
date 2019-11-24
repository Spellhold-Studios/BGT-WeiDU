BEGIN ~ratchi~

IF ~True()~ THEN BEGIN 0
  SAY @19770
  IF ~~ THEN REPLY @19771 GOTO 1
  IF ~~ THEN REPLY @19772 GOTO 3
  IF ~~ THEN REPLY @19773 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @19774
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[2159.1673],2)
CreateCreature("KOBCOMM",[2211.1848],2)
CreateCreature("KOBCOMM",[2455.1828],2)
CreateCreature("KOBCOMM",[2534.1769],2)
CreateCreature("KOBCOMM",[2594.1739],2)
CreateCreature("KOBCOMM",[2660.1972],2)
CreateCreature("KOBCOMM",[2647.2091],2)
CreateCreature("KOBCOMM",[2047.2233],2)
CreateCreature("KOBCOMM",[1972.2088],2)
CreateCreature("KOBCOMM",[1931.1913],2)
CreateCreature("KOBCOMM",[2727.2113],2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19775
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[2159.1673],2)
CreateCreature("KOBCOMM",[2211.1848],2)
CreateCreature("KOBCOMM",[2455.1828],2)
CreateCreature("KOBCOMM",[2534.1769],2)
CreateCreature("KOBCOMM",[2594.1739],2)
CreateCreature("KOBCOMM",[2660.1972],2)
CreateCreature("KOBCOMM",[2647.2091],2)
CreateCreature("KOBCOMM",[2047.2233],2)
CreateCreature("KOBCOMM",[1972.2088],2)
CreateCreature("KOBCOMM",[1931.1913],2)
CreateCreature("KOBCOMM",[2727.2113],2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @19776
  IF ~~ THEN REPLY @19777 GOTO 4
  IF ~~ THEN REPLY @19778 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @19779
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[2159.1673],2)
CreateCreature("KOBCOMM",[2211.1848],2)
CreateCreature("KOBCOMM",[2455.1828],2)
CreateCreature("KOBCOMM",[2534.1769],2)
CreateCreature("KOBCOMM",[2594.1739],2)
CreateCreature("KOBCOMM",[2660.1972],2)
CreateCreature("KOBCOMM",[2647.2091],2)
CreateCreature("KOBCOMM",[2047.2233],2)
CreateCreature("KOBCOMM",[1972.2088],2)
CreateCreature("KOBCOMM",[1931.1913],2)
CreateCreature("KOBCOMM",[2727.2113],2)
Enemy()
~ EXIT
END
