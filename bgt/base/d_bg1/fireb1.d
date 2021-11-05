BEGIN ~fireb1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @16184
  IF ~~ THEN DO ~SetGlobal("TalkedToFirebead","GLOBAL",1)~ UNSOLVED_JOURNAL @310003 EXIT
END

IF ~!HasItem("SCRL75",LastTalkedToBy)
!Global("HelpFirebead","GLOBAL",2)~ THEN BEGIN 1
  SAY @16185
  IF ~~ THEN DO ~~ EXIT
END

IF ~HasItem("SCRL75",LastTalkedToBy)~ THEN BEGIN 2
  SAY @16186
  IF ~~ THEN DO ~AddexperienceParty(50)
TakePartyItem("SCRL75")
GiveItemCreate("POTN08",LastTalkedToBy,1,0,0)
SetGlobal("HelpFirebead","GLOBAL",2)
EraseJournalEntry(@310003)
ForceSpell(Player1,CLERIC_PROTECT_FROM_EVIL)~ SOLVED_JOURNAL @310004 EXIT
END

IF ~False()~ THEN BEGIN 3
  SAY @16187
  IF ~~ THEN DO ~~ EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @16188
  IF ~~ THEN DO ~~ EXIT
END
