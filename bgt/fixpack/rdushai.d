// make Dushai see party has already been to island
ADD_STATE_TRIGGER ~dushai~ 0 ~Global("IslandTravel","GLOBAL",0)~ 4

REPLACE_TRIGGER_TEXT ~dushai~ ~Global("MetMendas","GLOBAL",0)~
 ~OR(2)
    Global("MetMendas","GLOBAL",0)
    GlobalGT("IslandTravel","GLOBAL",0)~

// add missing gold checks
ADD_TRANS_TRIGGER ~dushai~ 13 ~PartyGoldGT(99)~ DO 2

EXTEND_BOTTOM ~dushai~ 13 IF ~PartyGoldLT(100)~ THEN REPLY @22134 GOTO 16 END
