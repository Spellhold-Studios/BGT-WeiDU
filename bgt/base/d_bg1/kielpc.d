BEGIN ~kielpc~

IF ~Global("KielPC","ARD012",1)~ THEN BEGIN 0
  SAY @20832
  IF ~~ THEN DO ~MoveToPoint([1830.904])
OpenDoor("Door09")
MoveToPoint([2052.974])
MoveToPoint([2092.924])
Deactivate("Lever 1")
Deactivate("Lever 2")
Deactivate("Lever 3")
Deactivate("Lever 6")
Deactivate("Lever 7")
Activate("Lever 8")
MoveToPoint([2135.890])
SetGlobal("KielPC","ARD012",2)
StartDialogueNoSet([PC])~ EXIT
END

IF ~Global("KielPC","ARD012",2)~ THEN BEGIN 1
  SAY @20838
  IF ~~ THEN DO ~Deactivate("Lever 4")
Deactivate("Lever 5")
Activate("Lever 9")
Activate("Lever 10")
Activate("Lever 11")
MoveToPoint([2357.930])
MoveToPoint([2488.839])
MoveToPoint([2631.966])
MoveToPoint([2350.1215])
MoveToPoint([2294.1341])
MoveToPoint([2047.1371])
SetGlobal("KielPC","ARD012",3)
StartDialogueNoSet([PC])~ EXIT
END

IF ~Global("KielPC","ARD012",3)~ THEN BEGIN 2
  SAY @20843
  IF ~~ THEN DO ~MoveToPoint([2169.1371])
MoveToPoint([2252.1452])
MoveToPoint([2218.1517])
OpenDoor("Door13")
MoveToPoint([2115.1652])
SetGlobal("KielPC","ARD012",4)
StartDialogueNoSet([PC])~ EXIT
END

IF ~Global("KielPC","ARD012",4)~ THEN BEGIN 3
  SAY @20846
  IF ~~ THEN DO ~MoveToPoint([1816.1815])
MoveToPoint([1623.1679])
MoveToPoint([1520.1601])
MoveToPoint([1410.1644])
MoveToPoint([1424.1841])
MoveToPoint([1560.1877])
MoveToPoint([1716.2025])
MoveToPoint([1698.2129])
MoveToPoint([1563.2212])
MoveToPoint([1410.2159])
MoveToPoint([1306.2063])
MoveToPoint([1217.1969])
OpenDoor("Door14")
MoveToPoint([1130.1929])
MoveToPoint([1040.1933])
OpenDoor("Door15")
MoveToPoint([1005.2247])
SetGlobal("KielPC","ARD012",5)
StartDialogueNoSet([PC])~ EXIT
END

IF ~Global("KielPC","ARD012",5)~ THEN BEGIN 4
  SAY @20849
  IF ~~ THEN DO ~SetGlobal("KielPC","ARD012",6)
CreateCreature("kiel2",[1005.2247],0)
AddexperienceParty(5000)
ChangeAIScript("",OVERRIDE)
ActionOverride("kiel2",EscapeArea())~ EXIT
END
