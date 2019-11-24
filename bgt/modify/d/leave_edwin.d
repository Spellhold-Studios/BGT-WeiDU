// edwin
ADD_TRANS_ACTION edwinp BEGIN %cd_edwinp1% %cd_edwinp2% END BEGIN END ~LeaveParty()~
ADD_TRANS_ACTION edwinp BEGIN %cd_edwinp1% END BEGIN END ~SetGlobal("IWasKickedOut","LOCALS",1)~
SET_WEIGHT edwinp %cd_edwinp1% #6