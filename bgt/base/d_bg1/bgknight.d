BEGIN ~bgknight~

IF ~OR(2)
NumTimesTalkedTo(0)
!PartyHasItem("MISC82")~ THEN BEGIN 0
  SAY @17528
  IF ~~ THEN UNSOLVED_JOURNAL @310557 EXIT
END

IF ~PartyHasItem("MISC82")~ THEN BEGIN 1
  SAY @17533
  IF ~~ THEN DO ~TakePartyItem("MISC82")
AddexperienceParty(1500)
ActionOverride("Knight1",DestroySelf())
ActionOverride("Knight2",DestroySelf())
ActionOverride("Knight3",DestroySelf())
ActionOverride("Knight4",DestroySelf())
ActionOverride("Knight5",DestroySelf())
ActionOverride("Knight6",DestroySelf())
EraseJournalEntry(@310557)~ SOLVED_JOURNAL @310558 EXIT
END
