// stop Coran from introducing himself again when refused
REPLACE_TRANS_ACTION ~coran~ BEGIN 3 END BEGIN END ~SetNumTimesTalkedTo(0)~ ~~

ADD_STATE_TRIGGER ~coran~ 7 ~ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)~

ADD_STATE_TRIGGER ~coran~ 13 ~True()~
