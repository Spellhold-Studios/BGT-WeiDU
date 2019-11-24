BEGIN ~love~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22353
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @22354
  IF ~~ THEN DO ~SetGlobal("Love","GLOBAL",1)~ UNSOLVED_JOURNAL @310634 EXIT
END

IF ~PartyHasItem("misc1a")
Global("Avarice","GLOBAL",2)
Global("Pride","GLOBAL",2)
Global("Fear","GLOBAL",2)~ THEN BEGIN 2
  SAY @22355
  IF ~~ THEN DO ~TakePartyItem("misc1a")
ForceSpell(Myself,LOVEM_CHANGE)
AddexperienceParty(4000)
EraseJournalEntry(@310632)
EraseJournalEntry(@310633)
EraseJournalEntry(@310634)
EraseJournalEntry(@310635)~ SOLVED_JOURNAL @310636 EXIT
END

IF ~Global("Love","GLOBAL",1)
!PartyHasItem("misc1a")~ THEN BEGIN 3
  SAY @22360
  IF ~~ THEN GOTO 0
END

IF ~PartyHasItem("misc1A")~ THEN BEGIN 4
  SAY @23127
  IF ~~ THEN EXIT
END
