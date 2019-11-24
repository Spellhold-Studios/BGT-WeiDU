// eldoth
ADD_TRANS_ACTION eldotp BEGIN %cd_eldotp1% %cd_eldotp2% END BEGIN END ~SetGlobal("IWasKickedOut","LOCALS",1) LeaveParty()~
ADD_TRANS_ACTION eldotp BEGIN %cd_eldotp2% END BEGIN END ~ActionOverride("Skie",SetGlobal("IWasKickedOut","LOCALS",1))~
ADD_TRANS_ACTION eldotp BEGIN %cd_eldotp3% %cd_eldotp4% END BEGIN END ~LeaveParty()~