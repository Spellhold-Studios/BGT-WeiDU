// make zeke see Branwen is no longer petrified
REPLACE_TRIGGER_TEXT ~zeke~ ~True()~
 ~StateCheck("BRANWEN",STATE_STONE_DEATH)
  Exists("BRANWEN")~

REPLACE_TRIGGER_TEXT ~zeke~ ~InParty("BRANWEN")~
 ~!StateCheck("BRANWEN",STATE_STONE_DEATH)
  Exists("BRANWEN")~
