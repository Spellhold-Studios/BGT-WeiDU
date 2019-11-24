BEGIN ~agnasi~

IF ~Global("HelpGhorak","GLOBAL",1)
PartyHasItem("MISC81")~ THEN BEGIN 0
  SAY @15226
  IF ~~ THEN DO ~SetGlobal("HelpAgnasia","GLOBAL",1)
TakePartyItem("MISC81")
AddexperienceParty(1000)
EraseJournalEntry(@310180)
ReputationInc(1)~ SOLVED_JOURNAL @310181 EXIT
END

IF ~True()~ THEN BEGIN 1
  SAY @15225
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 2
  SAY @15227
  IF ~~ THEN EXIT
END
