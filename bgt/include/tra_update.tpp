PATCH_IF ( ~%LANGUAGE%~ STRING_COMPARE_CASE ~TChinese~ ) = 0 BEGIN
 //REPLACE_TEXTUALLY ~~~~~\(@[0-9]+[ ]*=[ ]*\)[~%]\([^~"%]*\)[~%]\([ ]*\)[~%]\([^~"%]*\)[~%]~~~~~ ~~~~~\1"\2"\3"\4"~~~~~ //for dialogF.tlk variant
 REPLACE_TEXTUALLY ~~~~~\(@[0-9]+[ ]*=[ ]*\)[~%]\([^~"%]*\)[~%]~~~~~ ~~~~~\1"\2"~~~~~ //if no dialogF.tlk variant detected, use dialog.tlk only variant
END

REPLACE_TEXTUALLY ~~~~~\([~"%]\)\[[^~"%]*\][ ]*~~~~~ ~~~~~\1~~~~~//clear []s at the start of StrRefs
REPLACE_TEXTUALLY ~\[IMOEN\([0-9]\)\([0-9]\)\]~ ~[BIMOEN\1\2]~ //Imoen sound changes
REPLACE_TEXTUALLY ~\[EDWIN\([0-9]\)\([0-9]\)\]~ ~[BEDWIN\1\2]~ //Edwin sound changes; STRING_SET 11618
REPLACE_TEXTUALLY ~\[MINSC\([0-9]\)\([0-9]\)\]~ ~[BGMNSC\1\2]~ //Minsc sound changes
REPLACE_TEXTUALLY ~\[BLACK\([0-9]\)\([0-9]\)\]~ ~[BLACKL\1\2]~ //Other sound changes 1
REPLACE_TEXTUALLY ~\[UMBER\([0-9]\)\([0-9]\)\]~ ~[PUMBER\1\2]~ //Other sound changes 2

INSERT_BYTES 0x0 4
SAY 0x0 @800000
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16002[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310000 = \1%journal_title%\2%journal_title%~~~~~ //for dialogF.tlk variant
REPLACE_TEXTUALLY ~~~~~@16002[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310000 = \1%journal_title%~~~~~ //if no dialogF.tlk variant detected, use dialog.tlk only variant
SAY 0x0 @800000
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16534[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310001 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16534[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310001 = \1%journal_title%~~~~~
SAY 0x0 @800000
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16535[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310002 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16535[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310002 = \1%journal_title%~~~~~
SAY 0x0 @800001
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16024[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310003 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16024[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310003 = \1%journal_title%~~~~~
SAY 0x0 @800001
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16526[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310004 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16526[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310004 = \1%journal_title%~~~~~
SAY 0x0 @800002
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16007[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310005 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16007[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310005 = \1%journal_title%~~~~~
SAY 0x0 @800002
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16525[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310006 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16525[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310006 = \1%journal_title%~~~~~
SAY 0x0 @800003
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15706[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310007 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15706[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310007 = \1%journal_title%~~~~~
SAY 0x0 @800003
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16536[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310008 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16536[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310008 = \1%journal_title%~~~~~
SAY 0x0 @800004
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15965[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310009 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15965[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310009 = \1%journal_title%~~~~~
SAY 0x0 @800004
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16529[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310010 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16529[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310010 = \1%journal_title%~~~~~
SAY 0x0 @800004
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16530[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310011 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16530[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310011 = \1%journal_title%~~~~~
SAY 0x0 @800005
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16019[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310012 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16019[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310012 = \1%journal_title%~~~~~
SAY 0x0 @800005
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16527[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310013 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16527[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310013 = \1%journal_title%~~~~~
SAY 0x0 @800005
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16528[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310014 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16528[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310014 = \1%journal_title%~~~~~
SAY 0x0 @800006
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11904[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310015 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11904[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310015 = \1%journal_title%~~~~~
SAY 0x0 @800006
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@17052[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310016 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@17052[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310016 = \1%journal_title%~~~~~
SAY 0x0 @800007
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15723[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310017 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15723[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310017 = \1%journal_title%~~~~~
SAY 0x0 @800007
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16537[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310018 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16537[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310018 = \1%journal_title%~~~~~
SAY 0x0 @800007
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16538[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310019 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16538[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310019 = \1%journal_title%~~~~~
SAY 0x0 @800007
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16539[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310020 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16539[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310020 = \1%journal_title%~~~~~
SAY 0x0 @800008
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15700[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310021 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15700[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310021 = \1%journal_title%~~~~~
SAY 0x0 @800008
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15699[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310022 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15699[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310022 = \1%journal_title%~~~~~
SAY 0x0 @800008
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15701[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310023 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15701[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310023 = \1%journal_title%~~~~~
SAY 0x0 @800008
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16531[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310024 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16531[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310024 = \1%journal_title%~~~~~
SAY 0x0 @800008
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16532[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310025 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16532[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310025 = \1%journal_title%~~~~~
SAY 0x0 @800008
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16533[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310026 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16533[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310026 = \1%journal_title%~~~~~
SAY 0x0 @800009
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10250[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310027 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10250[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310027 = \1%journal_title%~~~~~
SAY 0x0 @800009
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10718[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310028 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10718[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310028 = \1%journal_title%~~~~~
SAY 0x0 @800009
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6550[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310324 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6550[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310324 = \1%journal_title%~~~~~
SAY 0x0 @800009
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6551[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310325 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6551[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310325 = \1%journal_title%~~~~~
SAY 0x0 @800009
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19284[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310368 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19284[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310368 = \1%journal_title%~~~~~
SAY 0x0 @800009
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7262[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310543 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7262[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310543 = \1%journal_title%~~~~~
SAY 0x0 @800009
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7252[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310561 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7252[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310561 = \1%journal_title%~~~~~
SAY 0x0 @800009
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16353[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310571 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16353[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310571 = \1%journal_title%~~~~~
SAY 0x0 @800010
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15794[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310029 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15794[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310029 = \1%journal_title%~~~~~
SAY 0x0 @800010
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16669[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310030 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16669[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310030 = \1%journal_title%~~~~~
SAY 0x0 @800010
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16670[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310031 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16670[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310031 = \1%journal_title%~~~~~
SAY 0x0 @800011
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15730[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310032 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15730[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310032 = \1%journal_title%~~~~~
SAY 0x0 @800012
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15724[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310034 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15724[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310034 = \1%journal_title%~~~~~
SAY 0x0 @800012
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@14828[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310035 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@14828[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310035 = \1%journal_title%~~~~~
SAY 0x0 @800013
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15795[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310036 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15795[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310036 = \1%journal_title%~~~~~
SAY 0x0 @800013
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16668[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310037 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16668[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310037 = \1%journal_title%~~~~~
SAY 0x0 @800014
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5835[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310038 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5835[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310038 = \1%journal_title%~~~~~
SAY 0x0 @800014
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5834[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310039 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5834[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310039 = \1%journal_title%~~~~~
SAY 0x0 @800014
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5837[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310040 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5837[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310040 = \1%journal_title%~~~~~
SAY 0x0 @800014
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5836[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310041 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5836[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310041 = \1%journal_title%~~~~~
SAY 0x0 @800015
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7164[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310043 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7164[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310043 = \1%journal_title%~~~~~
SAY 0x0 @800016
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15725[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310046 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15725[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310046 = \1%journal_title%~~~~~
SAY 0x0 @800016
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16671[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310048 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16671[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310048 = \1%journal_title%~~~~~
SAY 0x0 @800017
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7701[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310049 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7701[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310049 = \1%journal_title%~~~~~
SAY 0x0 @800017
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15705[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310050 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15705[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310050 = \1%journal_title%~~~~~
SAY 0x0 @800017
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16672[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310051 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16672[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310051 = \1%journal_title%~~~~~
SAY 0x0 @800018
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7044[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310052 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7044[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310052 = \1%journal_title%~~~~~
SAY 0x0 @800018
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7045[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310053 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7045[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310053 = \1%journal_title%~~~~~
SAY 0x0 @800019
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19471[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310054 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19471[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310054 = \1%journal_title%~~~~~
SAY 0x0 @800019
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11546[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310336 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11546[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310336 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5083[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310055 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5083[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310055 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16554[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310056 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16554[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310056 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5743[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310058 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5743[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310058 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5742[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310059 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5742[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310059 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5817[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310302 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5817[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310302 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5818[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310303 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5818[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310303 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5819[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310304 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5819[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310304 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5820[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310305 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5820[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310305 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5821[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310306 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5821[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310306 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5825[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310308 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5825[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310308 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5776[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310551 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5776[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310551 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5813[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310563 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5813[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310563 = \1%journal_title%~~~~~
SAY 0x0 @800020
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5810[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310570 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5810[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310570 = \1%journal_title%~~~~~
SAY 0x0 @800021
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20694[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310060 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20694[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310060 = \1%journal_title%~~~~~
SAY 0x0 @800021
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16566[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310061 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16566[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310061 = \1%journal_title%~~~~~
SAY 0x0 @800021
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5826[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310489 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5826[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310489 = \1%journal_title%~~~~~
SAY 0x0 @800021
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5827[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310490 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5827[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310490 = \1%journal_title%~~~~~
SAY 0x0 @800021
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5828[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310491 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5828[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310491 = \1%journal_title%~~~~~
SAY 0x0 @800021
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5812[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310572 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5812[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310572 = \1%journal_title%~~~~~
SAY 0x0 @800021
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16568[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@311060 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16568[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@311060 = \1%journal_title%~~~~~
SAY 0x0 @800022
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@4323[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310062 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@4323[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310062 = \1%journal_title%~~~~~
SAY 0x0 @800022
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@4344[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310063 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@4344[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310063 = \1%journal_title%~~~~~
SAY 0x0 @800022
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16560[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310064 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16560[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310064 = \1%journal_title%~~~~~
SAY 0x0 @800022
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16561[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310065 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16561[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310065 = \1%journal_title%~~~~~
SAY 0x0 @800022
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19272[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310380 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19272[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310380 = \1%journal_title%~~~~~
SAY 0x0 @800023
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@4355[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@320522 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@4355[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@320522 = \1%journal_title%~~~~~
SAY 0x0 @800023
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16562[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@320531 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16562[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@320531 = \1%journal_title%~~~~~
SAY 0x0 @800023
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16563[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@320539 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16563[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@320539 = \1%journal_title%~~~~~
SAY 0x0 @800023
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@4356[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@320547 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@4356[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@320547 = \1%journal_title%~~~~~
SAY 0x0 @800023
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@4352[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@320548 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@4352[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@320548 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19432[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310066 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19432[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310066 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19438[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310067 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19438[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310067 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7087[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310068 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7087[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310068 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5802[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310074 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5802[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310074 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5801[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310075 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5801[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310075 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16558[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310076 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16558[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310076 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10932[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310079 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10932[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310079 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10934[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310080 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10934[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310080 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5823[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310307 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5823[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310307 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6535[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310309 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6535[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310309 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6536[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310310 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6536[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310310 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10928[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310331 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10928[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310331 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10929[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310332 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10929[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310332 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10930[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310337 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10930[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310337 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10931[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310338 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10931[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310338 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10140[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310361 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10140[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310361 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10935[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310464 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10935[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310464 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10936[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310465 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10936[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310465 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10937[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310466 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10937[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310466 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5807[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310559 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5807[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310559 = \1%journal_title%~~~~~
SAY 0x0 @800024
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5808[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310562 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5808[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310562 = \1%journal_title%~~~~~
SAY 0x0 @800025
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6610[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310069 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6610[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310069 = \1%journal_title%~~~~~
SAY 0x0 @800025
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6609[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310556 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6609[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310556 = \1%journal_title%~~~~~
SAY 0x0 @800026
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10933[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310077 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10933[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310077 = \1%journal_title%~~~~~
SAY 0x0 @800027
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5831[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310081 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5831[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310081 = \1%journal_title%~~~~~
SAY 0x0 @800027
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5832[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310082 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5832[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310082 = \1%journal_title%~~~~~
SAY 0x0 @800027
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20710[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310083 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20710[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310083 = \1%journal_title%~~~~~
SAY 0x0 @800027
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20711[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310084 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20711[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310084 = \1%journal_title%~~~~~
SAY 0x0 @800027
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5833[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310554 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5833[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310554 = \1%journal_title%~~~~~
SAY 0x0 @800028
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15696[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310085 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15696[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310085 = \1%journal_title%~~~~~
SAY 0x0 @800028
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15751[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310234 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15751[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310234 = \1%journal_title%~~~~~
SAY 0x0 @800028
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15752[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310235 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15752[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310235 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6279[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310087 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6279[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310087 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6283[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310088 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6283[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310088 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6405[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310089 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6405[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310089 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6403[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310090 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6403[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310090 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6404[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310091 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6404[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310091 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6406[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310092 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6406[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310092 = \1%journal_title%~~~~~ 
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6282[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310093 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6282[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310093 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6286[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310094 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6286[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310094 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6285[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310095 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6285[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310095 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6288[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310096 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6288[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310096 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6329[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310097 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6329[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310097 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6330[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310098 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6330[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310098 = \1%journal_title%~~~~~
SAY 0x0 @800029
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6331[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310099 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6331[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310099 = \1%journal_title%~~~~~
SAY 0x0 @800030
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15743[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310100 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15743[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310100 = \1%journal_title%~~~~~
SAY 0x0 @800031
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6496[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310102 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6496[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310102 = \1%journal_title%~~~~~
SAY 0x0 @800032
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11664[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310105 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11664[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310105 = \1%journal_title%~~~~~
SAY 0x0 @800033
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6596[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310107 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6596[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310107 = \1%journal_title%~~~~~
SAY 0x0 @800034
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20515[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310112 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20515[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310112 = \1%journal_title%~~~~~
SAY 0x0 @800034
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7028[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310113 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7028[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310113 = \1%journal_title%~~~~~
SAY 0x0 @800034
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7039[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310114 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7039[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310114 = \1%journal_title%~~~~~
SAY 0x0 @800034
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6588[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310349 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6588[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310349 = \1%journal_title%~~~~~
SAY 0x0 @800034
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6589[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@311349 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6589[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@311349 = \1%journal_title%~~~~~
SAY 0x0 @800034
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6587[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310356 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6587[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310356 = \1%journal_title%~~~~~
SAY 0x0 @800035
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7145[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310120 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7145[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310120 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20513[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310125 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20513[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310125 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10649[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310126 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10649[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310126 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6591[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310127 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6591[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310127 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6592[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310128 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6592[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310128 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20256[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310129 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20256[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310129 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20311[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310130 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20311[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310130 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20365[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310131 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20365[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310131 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7236[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310132 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7236[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310132 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6569[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310133 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6569[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310133 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9750[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310134 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9750[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310134 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20469[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310135 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20469[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310135 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6567[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310136 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6567[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310136 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6568[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310137 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6568[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310137 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7747[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310138 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7747[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310138 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11660[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310139 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11660[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310139 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7127[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310140 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7127[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310140 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7018[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310172 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7018[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310172 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7020[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310173 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7020[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310173 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7021[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310174 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7021[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310174 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7022[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310175 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7022[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310175 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7023[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310176 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7023[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310176 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7025[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310177 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7025[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310177 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7738[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310282 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7738[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310282 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7737[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310283 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7737[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310283 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9932[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310284 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9932[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310284 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@416[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310285 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@416[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310285 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10002[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310326 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10002[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310326 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10003[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310327 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10003[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310327 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20453[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310335 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20453[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310335 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7237[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310344 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7237[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310344 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7238[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310345 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7238[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310345 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6598[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310362 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6598[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310362 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9997[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310363 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9997[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310363 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7683[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310381 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7683[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310381 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7684[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310382 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7684[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310382 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7686[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310383 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7686[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310383 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7037[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310384 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7037[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310384 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7036[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310385 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7036[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310385 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16555[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310397 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16555[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310397 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16331[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310503 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16331[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310503 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16336[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310508 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16336[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310508 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7111[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310520 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7111[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310520 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10102[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310532 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10102[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310532 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20214[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310546 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20214[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310546 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7081[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310591 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7081[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310591 = \1%journal_title%~~~~~
SAY 0x0 @800036
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7091[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310594 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7091[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310594 = \1%journal_title%~~~~~
SAY 0x0 @800037
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15719[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310141 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15719[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310141 = \1%journal_title%~~~~~
SAY 0x0 @800037
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15720[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310142 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15720[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310142 = \1%journal_title%~~~~~
SAY 0x0 @800038
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15709[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310144 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15709[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310144 = \1%journal_title%~~~~~
SAY 0x0 @800038
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16540[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310145 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16540[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310145 = \1%journal_title%~~~~~
SAY 0x0 @800038
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16542[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310146 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16542[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310146 = \1%journal_title%~~~~~
SAY 0x0 @800038
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16543[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310147 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16543[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310147 = \1%journal_title%~~~~~
SAY 0x0 @800039
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5014[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310148 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5014[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310148 = \1%journal_title%~~~~~
SAY 0x0 @800039
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5017[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310149 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5017[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310149 = \1%journal_title%~~~~~
SAY 0x0 @800039
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16557[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310150 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16557[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310150 = \1%journal_title%~~~~~
SAY 0x0 @800040
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6508[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310151 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6508[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310151 = \1%journal_title%~~~~~
SAY 0x0 @800040
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6507[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310152 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6507[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310152 = \1%journal_title%~~~~~
SAY 0x0 @800040
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6509[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310153 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6509[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310153 = \1%journal_title%~~~~~
SAY 0x0 @800040
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6510[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310154 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6510[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310154 = \1%journal_title%~~~~~
SAY 0x0 @800041
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6613[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310155 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6613[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310155 = \1%journal_title%~~~~~
SAY 0x0 @800041
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7074[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310156 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7074[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310156 = \1%journal_title%~~~~~
SAY 0x0 @800042
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15742[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310160 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15742[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310160 = \1%journal_title%~~~~~
SAY 0x0 @800043
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15786[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310162 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15786[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310162 = \1%journal_title%~~~~~
SAY 0x0 @800043
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15785[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310163 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15785[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310163 = \1%journal_title%~~~~~
SAY 0x0 @800043
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15787[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310164 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15787[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310164 = \1%journal_title%~~~~~
SAY 0x0 @800044
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10414[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310167 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10414[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310167 = \1%journal_title%~~~~~
SAY 0x0 @800044
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10620[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310168 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10620[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310168 = \1%journal_title%~~~~~
SAY 0x0 @800044
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10592[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310169 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10592[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310169 = \1%journal_title%~~~~~
SAY 0x0 @800044
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10627[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310170 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10627[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310170 = \1%journal_title%~~~~~
SAY 0x0 @800045
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15747[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310178 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15747[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310178 = \1%journal_title%~~~~~
SAY 0x0 @800046
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15777[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310180 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15777[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310180 = \1%journal_title%~~~~~
SAY 0x0 @800047
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19286[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310564 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19286[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310564 = \1%journal_title%~~~~~
SAY 0x0 @800047
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6571[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310182 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6571[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310182 = \1%journal_title%~~~~~
SAY 0x0 @800047
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6572[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310183 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6572[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310183 = \1%journal_title%~~~~~
SAY 0x0 @800047
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6570[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310184 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6570[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310184 = \1%journal_title%~~~~~
SAY 0x0 @800048
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15744[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310187 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15744[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310187 = \1%journal_title%~~~~~
SAY 0x0 @800048
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15745[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310188 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15745[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310188 = \1%journal_title%~~~~~
SAY 0x0 @800048
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15746[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310189 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15746[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310189 = \1%journal_title%~~~~~
SAY 0x0 @800049
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15783[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310192 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15783[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310192 = \1%journal_title%~~~~~
SAY 0x0 @800049
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15776[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310193 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15776[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310193 = \1%journal_title%~~~~~
SAY 0x0 @800050
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6563[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310194 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6563[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310194 = \1%journal_title%~~~~~
SAY 0x0 @800050
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6564[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310195 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6564[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310195 = \1%journal_title%~~~~~
SAY 0x0 @800050
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6565[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310196 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6565[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310196 = \1%journal_title%~~~~~
SAY 0x0 @800050
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20887[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310197 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20887[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310197 = \1%journal_title%~~~~~
SAY 0x0 @800050
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6566[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310198 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6566[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310198 = \1%journal_title%~~~~~
SAY 0x0 @800051
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20593[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310200 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20593[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310200 = \1%journal_title%~~~~~
SAY 0x0 @800051
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20597[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310202 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20597[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310202 = \1%journal_title%~~~~~
SAY 0x0 @800051
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11667[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310207 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11667[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310207 = \1%journal_title%~~~~~
SAY 0x0 @800051
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11689[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310209 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11689[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310209 = \1%journal_title%~~~~~
SAY 0x0 @800051
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11686[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310210 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11686[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310210 = \1%journal_title%~~~~~
SAY 0x0 @800051
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11681[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@311210 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11681[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@311210 = \1%journal_title%~~~~~
SAY 0x0 @800051
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11408[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310339 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11408[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310339 = \1%journal_title%~~~~~
SAY 0x0 @800051
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11735[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310549 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11735[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310549 = \1%journal_title%~~~~~
SAY 0x0 @800051
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11661[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310599 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11661[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310599 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6554[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310201 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6554[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310201 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9651[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310333 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9651[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310333 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10010[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310342 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10010[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310342 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7250[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310369 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7250[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310369 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10131[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310371 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10131[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310371 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@8245[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310478 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@8245[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310478 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10116[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310480 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10116[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310480 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10121[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310481 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10121[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310481 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10122[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310482 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10122[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310482 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10124[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310483 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10124[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310483 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10106[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310484 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10106[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310484 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10107[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310485 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10107[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310485 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@14927[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310493 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@14927[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310493 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16335[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310507 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16335[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310507 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16338[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310510 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16338[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310510 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7256[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310593 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7256[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310593 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10011[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310598 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10011[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310598 = \1%journal_title%~~~~~
SAY 0x0 @800052
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7092[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310798 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7092[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310798 = \1%journal_title%~~~~~
SAY 0x0 @800053
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@24104[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310203 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@24104[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310203 = \1%journal_title%~~~~~
SAY 0x0 @800053
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7071[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310218 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7071[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310218 = \1%journal_title%~~~~~
SAY 0x0 @800053
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7072[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310219 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7072[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310219 = \1%journal_title%~~~~~
SAY 0x0 @800053
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@8302[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310343 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@8302[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310343 = \1%journal_title%~~~~~
SAY 0x0 @800053
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9682[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310387 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9682[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310387 = \1%journal_title%~~~~~
SAY 0x0 @800053
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9683[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310388 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9683[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310388 = \1%journal_title%~~~~~
SAY 0x0 @800053
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7042[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310392 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7042[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310392 = \1%journal_title%~~~~~
SAY 0x0 @800053
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9665[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310533 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9665[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310533 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6583[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310204 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6583[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310204 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9647[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310300 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9647[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310300 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10129[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310372 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10129[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310372 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10104[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310379 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10104[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310379 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10105[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310395 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10105[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310395 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10009[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310396 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10009[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310396 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10128[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310473 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10128[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310473 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10004[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310487 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10004[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310487 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10005[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310488 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10005[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310488 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16316[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310494 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16316[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310494 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16317[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310495 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16317[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310495 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9704[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310531 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9704[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310531 = \1%journal_title%~~~~~
SAY 0x0 @800054
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10012[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310555 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10012[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310555 = \1%journal_title%~~~~~
SAY 0x0 @800055
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6584[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310205 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6584[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310205 = \1%journal_title%~~~~~
SAY 0x0 @800055
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7167[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310206 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7167[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310206 = \1%journal_title%~~~~~
SAY 0x0 @800055
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6593[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310217 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6593[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310217 = \1%journal_title%~~~~~
SAY 0x0 @800055
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7073[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310220 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7073[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310220 = \1%journal_title%~~~~~
SAY 0x0 @800055
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7242[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310347 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7242[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310347 = \1%journal_title%~~~~~
SAY 0x0 @800055
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20542[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310398 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20542[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310398 = \1%journal_title%~~~~~
SAY 0x0 @800055
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10125[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310469 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10125[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310469 = \1%journal_title%~~~~~
SAY 0x0 @800055
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7168[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310538 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7168[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310538 = \1%journal_title%~~~~~
SAY 0x0 @800055
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7169[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310539 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7169[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310539 = \1%journal_title%~~~~~
SAY 0x0 @800056
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11668[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310208 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11668[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310208 = \1%journal_title%~~~~~
SAY 0x0 @800056
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6534[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310211 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6534[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310211 = \1%journal_title%~~~~~
SAY 0x0 @800056
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20666[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310216 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20666[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310216 = \1%journal_title%~~~~~
SAY 0x0 @800056
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7041[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310391 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7041[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310391 = \1%journal_title%~~~~~
SAY 0x0 @800056
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10127[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310471 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10127[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310471 = \1%journal_title%~~~~~
SAY 0x0 @800056
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10120[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310472 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10120[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310472 = \1%journal_title%~~~~~
SAY 0x0 @800056
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16318[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310496 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16318[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310496 = \1%journal_title%~~~~~
SAY 0x0 @800056
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7166[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310528 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7166[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310528 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6537[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310212 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6537[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310212 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6539[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310214 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6539[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310214 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7088[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310215 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7088[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310215 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10103[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310301 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10103[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310301 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11754[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310365 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11754[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310365 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11753[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310366 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11753[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310366 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6933[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310367 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6933[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310367 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9648[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310393 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9648[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310393 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9649[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310394 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9649[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310394 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7120[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310521 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7120[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310521 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9703[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310530 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9703[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310530 = \1%journal_title%~~~~~
SAY 0x0 @800057
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10130[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310597 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10130[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310597 = \1%journal_title%~~~~~
SAY 0x0 @800058
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7243[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310348 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7243[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310348 = \1%journal_title%~~~~~
SAY 0x0 @800058
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11755[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310364 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11755[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310364 = \1%journal_title%~~~~~
SAY 0x0 @800058
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10108[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310373 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10108[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310373 = \1%journal_title%~~~~~
SAY 0x0 @800058
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16337[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310509 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16337[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310509 = \1%journal_title%~~~~~
SAY 0x0 @800058
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7165[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310527 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7165[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310527 = \1%journal_title%~~~~~
SAY 0x0 @800058
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9705[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310529 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9705[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310529 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7251[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310370 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7251[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310370 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10123[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310374 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10123[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310374 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10008[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310378 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10008[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310378 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10126[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310470 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10126[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310470 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10119[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310479 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10119[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310479 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10109[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310486 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10109[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310486 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@14924[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310492 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@14924[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310492 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16320[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310497 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16320[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310497 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16329[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310498 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16329[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310498 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16330[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310499 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16330[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310499 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16332[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310504 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16332[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310504 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7260[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310569 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7260[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310569 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7255[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310592 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7255[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310592 = \1%journal_title%~~~~~
SAY 0x0 @800059
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9694[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310803 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9694[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310803 = \1%journal_title%~~~~~
SAY 0x0 @800060
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7076[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310221 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7076[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310221 = \1%journal_title%~~~~~
SAY 0x0 @800060
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7077[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310222 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7077[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310222 = \1%journal_title%~~~~~
SAY 0x0 @800060
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7078[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310223 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7078[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310223 = \1%journal_title%~~~~~
SAY 0x0 @800060
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7079[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310224 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7079[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310224 = \1%journal_title%~~~~~
SAY 0x0 @800060
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7038[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310236 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7038[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310236 = \1%journal_title%~~~~~
SAY 0x0 @800060
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7239[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310346 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7239[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310346 = \1%journal_title%~~~~~
SAY 0x0 @800061
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15748[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310226 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15748[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310226 = \1%journal_title%~~~~~
SAY 0x0 @800062
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20727[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310228 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20727[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310228 = \1%journal_title%~~~~~
SAY 0x0 @800062
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@1827[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310229 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@1827[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310229 = \1%journal_title%~~~~~
SAY 0x0 @800062
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6332[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310230 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6332[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310230 = \1%journal_title%~~~~~
SAY 0x0 @800062
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6355[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310231 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6355[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310231 = \1%journal_title%~~~~~
SAY 0x0 @800062
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6354[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310232 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6354[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310232 = \1%journal_title%~~~~~
SAY 0x0 @800063
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15780[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310237 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15780[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310237 = \1%journal_title%~~~~~
SAY 0x0 @800064
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15735[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310239 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15735[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310239 = \1%journal_title%~~~~~
SAY 0x0 @800065
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15736[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310240 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15736[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310240 = \1%journal_title%~~~~~
SAY 0x0 @800066
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15733[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310241 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15733[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310241 = \1%journal_title%~~~~~
SAY 0x0 @800066
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15734[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310242 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15734[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310242 = \1%journal_title%~~~~~
SAY 0x0 @800067
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15732[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310243 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15732[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310243 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9918[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310249 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9918[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310249 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7144[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310250 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7144[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310250 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9920[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310251 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9920[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310251 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9921[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310252 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9921[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310252 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9926[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310253 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9926[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310253 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9927[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310254 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9927[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310254 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9928[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310255 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9928[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310255 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9930[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310256 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9930[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310256 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9931[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310257 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9931[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310257 = \1%journal_title%~~~~~
SAY 0x0 @800068
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9963[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310258 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9963[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310258 = \1%journal_title%~~~~~
SAY 0x0 @800069
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9976[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310247 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9976[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310247 = \1%journal_title%~~~~~
SAY 0x0 @800069
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9977[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310248 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9977[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310248 = \1%journal_title%~~~~~
SAY 0x0 @800069
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9978[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310259 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9978[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310259 = \1%journal_title%~~~~~
SAY 0x0 @800069
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9979[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310260 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9979[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310260 = \1%journal_title%~~~~~
SAY 0x0 @800069
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9980[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310261 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9980[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310261 = \1%journal_title%~~~~~
SAY 0x0 @800069
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9982[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310262 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9982[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310262 = \1%journal_title%~~~~~
SAY 0x0 @800069
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9986[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310263 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9986[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310263 = \1%journal_title%~~~~~
SAY 0x0 @800069
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9934[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310264 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9934[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310264 = \1%journal_title%~~~~~
SAY 0x0 @800069
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7096[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310386 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7096[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310386 = \1%journal_title%~~~~~
SAY 0x0 @800071
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7009[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310271 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7009[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310271 = \1%journal_title%~~~~~
SAY 0x0 @800072
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6501[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310274 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6501[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310274 = \1%journal_title%~~~~~
SAY 0x0 @800072
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7032[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310275 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7032[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310275 = \1%journal_title%~~~~~
SAY 0x0 @800072
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6558[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310276 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6558[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310276 = \1%journal_title%~~~~~
SAY 0x0 @800072
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6559[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310277 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6559[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310277 = \1%journal_title%~~~~~
SAY 0x0 @800072
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6560[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310278 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6560[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310278 = \1%journal_title%~~~~~
SAY 0x0 @800072
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6579[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310340 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6579[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310340 = \1%journal_title%~~~~~
SAY 0x0 @800072
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6580[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310341 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6580[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310341 = \1%journal_title%~~~~~
SAY 0x0 @800072
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7700[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310399 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7700[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310399 = \1%journal_title%~~~~~
SAY 0x0 @800073
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15784[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310280 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15784[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310280 = \1%journal_title%~~~~~
SAY 0x0 @800074
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15740[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310286 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15740[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310286 = \1%journal_title%~~~~~
SAY 0x0 @800075
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15775[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310288 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15775[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310288 = \1%journal_title%~~~~~
SAY 0x0 @800076
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15779[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310290 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15779[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310290 = \1%journal_title%~~~~~
SAY 0x0 @800077
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15803[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310292 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15803[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310292 = \1%journal_title%~~~~~
SAY 0x0 @800078
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15791[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310295 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15791[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310295 = \1%journal_title%~~~~~
SAY 0x0 @800079
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16772[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310297 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16772[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310297 = \1%journal_title%~~~~~
SAY 0x0 @800079
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@24108[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@311297 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@24108[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@311297 = \1%journal_title%~~~~~
SAY 0x0 @800080
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15760[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310311 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15760[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310311 = \1%journal_title%~~~~~
SAY 0x0 @800080
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16673[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310312 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16673[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310312 = \1%journal_title%~~~~~
SAY 0x0 @800081
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15801[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310313 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15801[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310313 = \1%journal_title%~~~~~
SAY 0x0 @800081
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16677[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310314 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16677[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310314 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10054[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310350 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10054[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310350 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6934[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310351 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6934[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310351 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5822[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310352 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5822[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310352 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5814[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310353 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5814[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310353 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6553[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310354 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6553[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310354 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6615[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310355 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6615[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310355 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6427[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310402 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6427[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310402 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5809[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310475 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5809[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310475 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5062[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310476 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5062[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310476 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5059[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310477 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5059[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310477 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7253[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310500 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7253[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310500 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7261[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310502 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7261[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310502 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16333[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310505 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16333[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310505 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16334[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310506 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16334[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310506 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16339[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310511 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16339[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310511 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16340[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310512 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16340[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310512 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16352[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310518 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16352[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310518 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16354[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310522 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16354[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310522 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5775[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310550 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5775[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310550 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7259[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310568 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7259[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310568 = \1%journal_title%~~~~~
SAY 0x0 @800082
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@3698[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310804 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@3698[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310804 = \1%journal_title%~~~~~
SAY 0x0 @800083
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15789[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310389 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15789[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310389 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11648[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310400 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11648[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310400 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6438[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310401 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6438[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310401 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6436[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310403 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6436[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310403 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6439[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310404 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6439[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310404 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6437[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310405 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6437[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310405 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6836[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310406 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6836[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310406 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6830[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310407 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6830[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310407 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6469[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310408 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6469[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310408 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6468[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310807 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6468[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310807 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20113[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310409 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20113[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310409 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20115[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310808 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20115[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310808 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6549[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310410 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6549[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310410 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6542[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310411 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6542[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310411 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11854[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310412 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11854[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310412 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6599[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310413 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6599[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310413 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11722[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310414 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11722[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310414 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6578[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310415 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6578[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310415 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11817[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310416 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11817[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310416 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11864[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310417 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11864[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310417 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6541[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310418 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6541[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310418 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6467[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310419 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6467[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310419 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6544[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310420 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6544[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310420 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6545[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310421 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6545[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310421 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6546[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310422 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6546[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310422 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6547[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310423 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6547[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310423 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6426[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310424 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6426[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310424 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6577[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310425 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6577[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310425 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6590[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310426 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6590[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310426 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7013[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310427 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7013[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310427 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7012[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310428 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7012[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310428 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7034[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310429 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7034[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310429 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7033[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310430 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7033[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310430 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20133[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310431 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20133[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310431 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20135[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@311431 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20135[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@311431 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@8140[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310467 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@8140[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310467 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@8136[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310468 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@8136[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310468 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7254[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310501 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7254[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310501 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16344[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310513 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16344[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310513 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16345[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310514 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16345[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310514 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16347[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310515 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16347[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310515 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16348[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310516 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16348[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310516 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16350[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310517 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16350[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310517 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@3720[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310519 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@3720[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310519 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11855[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310534 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11855[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310534 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20170[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310541 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20170[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310541 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20179[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310542 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20179[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310542 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11645[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310544 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11645[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310544 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11647[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310545 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11647[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310545 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6548[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310747 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6548[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310747 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7089[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310797 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7089[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310797 = \1%journal_title%~~~~~
SAY 0x0 @800084
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7944[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310800 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7944[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310800 = \1%journal_title%~~~~~
SAY 0x0 @800085
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19277[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310451 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19277[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310451 = \1%journal_title%~~~~~
SAY 0x0 @800085
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5728[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310452 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5728[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310452 = \1%journal_title%~~~~~
SAY 0x0 @800085
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19364[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310574 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19364[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310574 = \1%journal_title%~~~~~
SAY 0x0 @800085
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10669[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310453 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10669[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310453 = \1%journal_title%~~~~~
SAY 0x0 @800085
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10670[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310454 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10670[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310454 = \1%journal_title%~~~~~
SAY 0x0 @800085
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10671[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310455 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10671[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310455 = \1%journal_title%~~~~~
SAY 0x0 @800086
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23543[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310456 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23543[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310456 = \1%journal_title%~~~~~
SAY 0x0 @800086
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23545[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310457 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23545[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310457 = \1%journal_title%~~~~~
SAY 0x0 @800087
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15708[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310458 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15708[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310458 = \1%journal_title%~~~~~
SAY 0x0 @800087
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16544[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310459 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16544[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310459 = \1%journal_title%~~~~~
SAY 0x0 @800087
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15707[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310460 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15707[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310460 = \1%journal_title%~~~~~
SAY 0x0 @800088
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7084[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310461 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7084[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310461 = \1%journal_title%~~~~~
SAY 0x0 @800088
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10944[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310462 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10944[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310462 = \1%journal_title%~~~~~
SAY 0x0 @800088
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7085[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310463 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7085[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310463 = \1%journal_title%~~~~~
SAY 0x0 @800088
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7264[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310590 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7264[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310590 = \1%journal_title%~~~~~
SAY 0x0 @800088
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20632[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@320462 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20632[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@320462 = \1%journal_title%~~~~~
SAY 0x0 @800088
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20633[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@330462 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20633[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@330462 = \1%journal_title%~~~~~
SAY 0x0 @800089
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15788[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310523 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15788[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310523 = \1%journal_title%~~~~~
SAY 0x0 @800089
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16676[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310524 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16676[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310524 = \1%journal_title%~~~~~
SAY 0x0 @800090
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10915[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310535 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10915[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310535 = \1%journal_title%~~~~~
SAY 0x0 @800090
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10917[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310536 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10917[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310536 = \1%journal_title%~~~~~
SAY 0x0 @800090
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10919[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310537 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10919[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310537 = \1%journal_title%~~~~~
SAY 0x0 @800091
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11880[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310547 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11880[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310547 = \1%journal_title%~~~~~
SAY 0x0 @800091
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11882[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310548 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11882[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310548 = \1%journal_title%~~~~~
SAY 0x0 @800091
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7258[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310567 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7258[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310567 = \1%journal_title%~~~~~
SAY 0x0 @800092
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15721[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310552 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15721[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310552 = \1%journal_title%~~~~~
SAY 0x0 @800093
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20621[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310557 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20621[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310557 = \1%journal_title%~~~~~
SAY 0x0 @800094
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15728[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310565 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15728[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310565 = \1%journal_title%~~~~~
SAY 0x0 @800094
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15729[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310566 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15729[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310566 = \1%journal_title%~~~~~
SAY 0x0 @800095
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7122[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310573 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7122[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310573 = \1%journal_title%~~~~~
SAY 0x0 @800098
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6996[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310581 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6996[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310581 = \1%journal_title%~~~~~
SAY 0x0 @800098
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6997[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310582 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6997[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310582 = \1%journal_title%~~~~~
SAY 0x0 @800098
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6607[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310583 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6607[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310583 = \1%journal_title%~~~~~
SAY 0x0 @800098
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6969[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310584 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6969[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310584 = \1%journal_title%~~~~~
SAY 0x0 @800098
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6973[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310585 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6973[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310585 = \1%journal_title%~~~~~
SAY 0x0 @800098
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7014[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310588 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7014[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310588 = \1%journal_title%~~~~~
SAY 0x0 @800099
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6574[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@202510 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6574[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@202510 = \1%journal_title%~~~~~
SAY 0x0 @800101
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22910[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310600 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22910[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310600 = \1%journal_title%~~~~~
SAY 0x0 @800101
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22911[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310601 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22911[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310601 = \1%journal_title%~~~~~
SAY 0x0 @800101
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22914[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310602 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22914[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310602 = \1%journal_title%~~~~~
SAY 0x0 @800101
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23500[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310603 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23500[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310603 = \1%journal_title%~~~~~
SAY 0x0 @800101
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23498[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310604 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23498[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310604 = \1%journal_title%~~~~~
SAY 0x0 @800102
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22952[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310606 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22952[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310606 = \1%journal_title%~~~~~
SAY 0x0 @800102
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@24115[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310607 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@24115[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310607 = \1%journal_title%~~~~~
SAY 0x0 @800102
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23509[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310608 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23509[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310608 = \1%journal_title%~~~~~
SAY 0x0 @800102
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23508[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310609 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23508[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310609 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23526[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310611 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23526[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310611 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23525[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310612 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23525[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310612 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22941[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310613 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22941[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310613 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23531[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310614 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23531[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310614 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23532[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310615 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23532[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310615 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23533[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310616 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23533[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310616 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23534[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310617 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23534[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310617 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23535[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310618 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23535[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310618 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23536[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310619 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23536[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310619 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23537[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310620 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23537[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310620 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@24114[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310621 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@24114[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310621 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23337[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310622 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23337[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310622 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23338[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310623 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23338[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310623 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23339[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310624 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23339[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310624 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23341[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310637 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23341[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310637 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23340[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310638 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23340[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310638 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23225[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310625 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23225[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310625 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23458[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310626 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23458[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310626 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23459[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310627 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23459[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310627 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23461[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310628 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23461[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310628 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23529[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310629 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23529[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310629 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23530[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310630 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23530[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310630 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23371[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310631 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23371[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310631 = \1%journal_title%~~~~~
SAY 0x0 @800104
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23781[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310632 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23781[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310632 = \1%journal_title%~~~~~
SAY 0x0 @800105
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23524[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310633 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23524[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310633 = \1%journal_title%~~~~~
SAY 0x0 @800106
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23549[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310634 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23549[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310634 = \1%journal_title%~~~~~
SAY 0x0 @800107
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@24051[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310636 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@24051[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310636 = \1%journal_title%~~~~~
SAY 0x0 @800108
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20867[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310635 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20867[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310635 = \1%journal_title%~~~~~
SAY 0x0 @800103
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@24094[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310639 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@24094[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310639 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23527[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310640 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23527[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310640 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23558[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310641 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23558[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310641 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23560[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310642 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23560[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310642 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23559[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310643 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23559[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310643 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23553[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310644 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23553[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310644 = \1%journal_title%~~~~~
SAY 0x0 @800110
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22947[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310645 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22947[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310645 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22946[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310646 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22946[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310646 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22945[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310647 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22945[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310647 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22948[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310648 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22948[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310648 = \1%journal_title%~~~~~
SAY 0x0 @800110
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23517[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310649 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23517[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310649 = \1%journal_title%~~~~~
SAY 0x0 @800110
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23518[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310652 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23518[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310652 = \1%journal_title%~~~~~
SAY 0x0 @800110
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23519[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310653 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23519[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310653 = \1%journal_title%~~~~~
SAY 0x0 @800110
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23512[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310650 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23512[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310650 = \1%journal_title%~~~~~
SAY 0x0 @800110
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23513[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310651 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23513[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310651 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23497[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310654 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23497[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310654 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22917[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310655 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22917[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310655 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22930[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310663 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22930[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310663 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22931[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310664 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22931[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310664 = \1%journal_title%~~~~~
SAY 0x0 @800109
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23410[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310675 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23410[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310675 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23563[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310657 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23563[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310657 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23515[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310658 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23515[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310658 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22951[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310665 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22951[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310665 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22949[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310666 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22949[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310666 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23348[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310670 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23348[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310670 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23349[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310671 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23349[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310671 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23350[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310672 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23350[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310672 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23351[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310673 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23351[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310673 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23352[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310674 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23352[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310674 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23520[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310681 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23520[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310681 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23552[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310694 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23552[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310694 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23395[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310695 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23395[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310695 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23404[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310700 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23404[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310700 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23407[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310701 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23407[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310701 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23409[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310702 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23409[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310702 = \1%journal_title%~~~~~
SAY 0x0 @800111
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23411[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310703 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23411[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310703 = \1%journal_title%~~~~~
SAY 0x0 @800112
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23347[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310659 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23347[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310659 = \1%journal_title%~~~~~
SAY 0x0 @800112
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23346[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310660 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23346[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310660 = \1%journal_title%~~~~~
SAY 0x0 @800112
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23538[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310661 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23538[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310661 = \1%journal_title%~~~~~
SAY 0x0 @800112
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22942[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310662 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22942[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310662 = \1%journal_title%~~~~~
SAY 0x0 @800112
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23555[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310667 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23555[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310667 = \1%journal_title%~~~~~
SAY 0x0 @800112
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23557[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310668 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23557[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310668 = \1%journal_title%~~~~~
SAY 0x0 @800112
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@24121[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310669 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@24121[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310669 = \1%journal_title%~~~~~
SAY 0x0 @800112
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23523[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310687 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23523[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310687 = \1%journal_title%~~~~~
SAY 0x0 @800113
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23561[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310676 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23561[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310676 = \1%journal_title%~~~~~
SAY 0x0 @800113
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23562[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310677 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23562[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310677 = \1%journal_title%~~~~~
SAY 0x0 @800114
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22920[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310678 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22920[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310678 = \1%journal_title%~~~~~
SAY 0x0 @800114
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22923[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310679 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22923[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310679 = \1%journal_title%~~~~~
SAY 0x0 @800114
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@24077[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310680 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@24077[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310680 = \1%journal_title%~~~~~
SAY 0x0 @800115
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22934[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310682 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22934[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310682 = \1%journal_title%~~~~~
SAY 0x0 @800115
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23306[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310683 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23306[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310683 = \1%journal_title%~~~~~
SAY 0x0 @800115
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23521[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310684 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23521[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310684 = \1%journal_title%~~~~~
SAY 0x0 @800116
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22940[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310685 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22940[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310685 = \1%journal_title%~~~~~
SAY 0x0 @800116
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23522[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310686 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23522[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310686 = \1%journal_title%~~~~~
SAY 0x0 @800117
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23546[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310688 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23546[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310688 = \1%journal_title%~~~~~
SAY 0x0 @800117
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23547[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310689 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23547[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310689 = \1%journal_title%~~~~~
SAY 0x0 @800117
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23548[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310690 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23548[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310690 = \1%journal_title%~~~~~
SAY 0x0 @800118
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23550[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310691 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23550[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310691 = \1%journal_title%~~~~~
SAY 0x0 @800118
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22943[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310692 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22943[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310692 = \1%journal_title%~~~~~
SAY 0x0 @800118
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23551[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310693 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23551[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310693 = \1%journal_title%~~~~~
SAY 0x0 @800119
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23396[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310696 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23396[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310696 = \1%journal_title%~~~~~
SAY 0x0 @800120
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23398[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310697 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23398[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310697 = \1%journal_title%~~~~~
SAY 0x0 @800120
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23400[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310698 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23400[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310698 = \1%journal_title%~~~~~
SAY 0x0 @800120
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23402[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310699 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23402[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310699 = \1%journal_title%~~~~~
SAY 0x0 @800119
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23412[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310704 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23412[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310704 = \1%journal_title%~~~~~
SAY 0x0 @800119
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23442[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310705 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23442[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310705 = \1%journal_title%~~~~~
SAY 0x0 @800119
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23444[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310706 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23444[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310706 = \1%journal_title%~~~~~
SAY 0x0 @800121
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23446[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310707 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23446[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310707 = \1%journal_title%~~~~~
SAY 0x0 @800121
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23481[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310708 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23481[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310708 = \1%journal_title%~~~~~
SAY 0x0 @800121
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23483[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310709 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23483[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310709 = \1%journal_title%~~~~~
SAY 0x0 @800121
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23485[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310710 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23485[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310710 = \1%journal_title%~~~~~
SAY 0x0 @800119
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23489[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310711 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23489[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310711 = \1%journal_title%~~~~~
SAY 0x0 @800119
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23487[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310712 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23487[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310712 = \1%journal_title%~~~~~
SAY 0x0 @800119
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23491[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310713 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23491[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310713 = \1%journal_title%~~~~~
SAY 0x0 @800122
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23397[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310714 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23397[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310714 = \1%journal_title%~~~~~
SAY 0x0 @800120
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23399[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310715 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23399[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310715 = \1%journal_title%~~~~~
SAY 0x0 @800120
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23401[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310716 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23401[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310716 = \1%journal_title%~~~~~
SAY 0x0 @800120
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23403[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310717 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23403[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310717 = \1%journal_title%~~~~~
SAY 0x0 @800122
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23424[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310718 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23424[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310718 = \1%journal_title%~~~~~
SAY 0x0 @800122
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23443[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310719 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23443[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310719 = \1%journal_title%~~~~~
SAY 0x0 @800122
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23445[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310720 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23445[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310720 = \1%journal_title%~~~~~
SAY 0x0 @800123
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23447[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310721 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23447[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310721 = \1%journal_title%~~~~~
SAY 0x0 @800123
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23482[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310722 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23482[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310722 = \1%journal_title%~~~~~
SAY 0x0 @800123
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23484[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310723 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23484[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310723 = \1%journal_title%~~~~~
SAY 0x0 @800123
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23486[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310724 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23486[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310724 = \1%journal_title%~~~~~
SAY 0x0 @800122
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23490[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310725 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23490[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310725 = \1%journal_title%~~~~~
SAY 0x0 @800122
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23488[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310726 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23488[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310726 = \1%journal_title%~~~~~
SAY 0x0 @800122
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23492[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310727 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23492[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310727 = \1%journal_title%~~~~~
SAY 0x0 @800124
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23507[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310728 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23507[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310728 = \1%journal_title%~~~~~
SAY 0x0 @800124
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23506[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310729 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23506[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310729 = \1%journal_title%~~~~~
SAY 0x0 @800124
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23503[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310730 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23503[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310730 = \1%journal_title%~~~~~
SAY 0x0 @800124
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23504[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310731 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23504[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310731 = \1%journal_title%~~~~~
SAY 0x0 @800124
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23505[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310732 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23505[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310732 = \1%journal_title%~~~~~
SAY 0x0 @800125
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5815[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310750 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5815[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310750 = \1%journal_title%~~~~~
SAY 0x0 @800126
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5824[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310751 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5824[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310751 = \1%journal_title%~~~~~
SAY 0x0 @800127
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10269[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310752 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10269[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310752 = \1%journal_title%~~~~~
SAY 0x0 @800128
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5816[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310753 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5816[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310753 = \1%journal_title%~~~~~
SAY 0x0 @800129
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6616[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310754 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6616[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310754 = \1%journal_title%~~~~~
SAY 0x0 @800130
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6999[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310755 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6999[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310755 = \1%journal_title%~~~~~
SAY 0x0 @800131
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7000[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310756 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7000[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310756 = \1%journal_title%~~~~~
SAY 0x0 @800132
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7001[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310757 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7001[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310757 = \1%journal_title%~~~~~
SAY 0x0 @800133
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7002[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310758 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7002[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310758 = \1%journal_title%~~~~~
SAY 0x0 @800134
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7003[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310759 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7003[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310759 = \1%journal_title%~~~~~
SAY 0x0 @800135
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7004[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310760 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7004[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310760 = \1%journal_title%~~~~~
SAY 0x0 @800136
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20452[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310761 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20452[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310761 = \1%journal_title%~~~~~
SAY 0x0 @800137
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@1415[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310762 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@1415[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310762 = \1%journal_title%~~~~~
SAY 0x0 @800138
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7240[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310763 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7240[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310763 = \1%journal_title%~~~~~
SAY 0x0 @800139
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19285[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310764 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19285[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310764 = \1%journal_title%~~~~~
SAY 0x0 @800140
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9738[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310765 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9738[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310765 = \1%journal_title%~~~~~
SAY 0x0 @800141
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9739[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310766 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9739[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310766 = \1%journal_title%~~~~~
SAY 0x0 @800142
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9870[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310767 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9870[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310767 = \1%journal_title%~~~~~
SAY 0x0 @800143
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6602[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310560 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6602[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310560 = \1%journal_title%~~~~~
SAY 0x0 @800143
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6603[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310768 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6603[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310768 = \1%journal_title%~~~~~
SAY 0x0 @800143
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6605[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310814 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6605[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310814 = \1%journal_title%~~~~~
SAY 0x0 @800144
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6606[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310769 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6606[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310769 = \1%journal_title%~~~~~
SAY 0x0 @800145
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6608[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310770 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6608[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310770 = \1%journal_title%~~~~~
SAY 0x0 @800146
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6937[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310771 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6937[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310771 = \1%journal_title%~~~~~
SAY 0x0 @800147
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@15790[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310772 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@15790[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310772 = \1%journal_title%~~~~~
SAY 0x0 @800148
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7040[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310773 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7040[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310773 = \1%journal_title%~~~~~
SAY 0x0 @800149
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7082[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310774 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7082[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310774 = \1%journal_title%~~~~~
SAY 0x0 @800150
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7257[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310775 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7257[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310775 = \1%journal_title%~~~~~
SAY 0x0 @800151
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@19283[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310777 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@19283[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310777 = \1%journal_title%~~~~~
SAY 0x0 @800152
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11883[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310778 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11883[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310778 = \1%journal_title%~~~~~
SAY 0x0 @800153
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11884[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310779 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11884[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310779 = \1%journal_title%~~~~~
SAY 0x0 @800154
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16319[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310780 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16319[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310780 = \1%journal_title%~~~~~
SAY 0x0 @800155
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16346[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310781 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16346[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310781 = \1%journal_title%~~~~~
SAY 0x0 @800125
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16349[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310782 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16349[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310782 = \1%journal_title%~~~~~
SAY 0x0 @800156
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16351[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310783 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16351[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310783 = \1%journal_title%~~~~~
SAY 0x0 @800157
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7235[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310784 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7235[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310784 = \1%journal_title%~~~~~
SAY 0x0 @800158
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6562[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310785 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6562[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310785 = \1%journal_title%~~~~~
SAY 0x0 @800159
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6600[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310786 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6600[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310786 = \1%journal_title%~~~~~
SAY 0x0 @800160
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6942[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310787 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6942[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310787 = \1%journal_title%~~~~~
SAY 0x0 @800161
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@3424[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310788 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@3424[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310788 = \1%journal_title%~~~~~
SAY 0x0 @800161
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@3422[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310789 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@3422[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310789 = \1%journal_title%~~~~~
SAY 0x0 @800162
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6573[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310334 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6573[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310334 = \1%journal_title%~~~~~
SAY 0x0 @800163
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11771[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310357 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11771[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310357 = \1%journal_title%~~~~~
SAY 0x0 @800163
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11772[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310358 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11772[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310358 = \1%journal_title%~~~~~
SAY 0x0 @800163
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11773[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310359 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11773[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310359 = \1%journal_title%~~~~~
SAY 0x0 @800163
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11774[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310360 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11774[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310360 = \1%journal_title%~~~~~
SAY 0x0 @800163
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11775[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310315 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11775[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310315 = \1%journal_title%~~~~~
SAY 0x0 @800163
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11777[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310316 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11777[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310316 = \1%journal_title%~~~~~
SAY 0x0 @800163
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11776[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310317 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11776[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310317 = \1%journal_title%~~~~~
SAY 0x0 @800164
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@17175[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310318 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@17175[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310318 = \1%journal_title%~~~~~
SAY 0x0 @800164
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16028[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310433 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16028[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310433 = \1%journal_title%~~~~~
SAY 0x0 @800165
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10055[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310319 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10055[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310319 = \1%journal_title%~~~~~
SAY 0x0 @800165
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10056[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310320 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10056[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310320 = \1%journal_title%~~~~~
SAY 0x0 @800165
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10062[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310321 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10062[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310321 = \1%journal_title%~~~~~
SAY 0x0 @800165
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10065[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310322 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10065[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310322 = \1%journal_title%~~~~~
SAY 0x0 @800165
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10066[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310323 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10066[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310323 = \1%journal_title%~~~~~
SAY 0x0 @800165
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10074[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310432 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10074[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310432 = \1%journal_title%~~~~~
SAY 0x0 @800166
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16541[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310434 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16541[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310434 = \1%journal_title%~~~~~
SAY 0x0 @800167
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10041[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310435 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10041[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310435 = \1%journal_title%~~~~~
SAY 0x0 @800168
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11821[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310436 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11821[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310436 = \1%journal_title%~~~~~
SAY 0x0 @800169
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11872[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310437 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11872[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310437 = \1%journal_title%~~~~~
SAY 0x0 @800170
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16548[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310438 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16548[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310438 = \1%journal_title%~~~~~
SAY 0x0 @800170
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16549[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310439 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16549[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310439 = \1%journal_title%~~~~~
SAY 0x0 @800171
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16550[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310440 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16550[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310440 = \1%journal_title%~~~~~
SAY 0x0 @800172
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16564[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310441 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16564[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310441 = \1%journal_title%~~~~~
SAY 0x0 @800172
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5000[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310213 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5000[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310213 = \1%journal_title%~~~~~
SAY 0x0 @800173
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16567[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310442 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16567[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310442 = \1%journal_title%~~~~~
SAY 0x0 @800174
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11690[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310443 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11690[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310443 = \1%journal_title%~~~~~
//Volo's rumors are also dialogue text!/////////////////////////////
//SAY 0x0 @800175
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@8534[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310444 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@8534[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310444 = \1%journal_title%~~~~~
//SAY 0x0 @800175
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@8535[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310445 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@8535[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310445 = \1%journal_title%~~~~~
//SAY 0x0 @800175
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@8536[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310446 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@8536[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310446 = \1%journal_title%~~~~~
//SAY 0x0 @800175
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@8537[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310447 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@8537[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310447 = \1%journal_title%~~~~~
////////////////////////////////////////////////////////////////////
SAY 0x0 @800176
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16574[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310448 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16574[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310448 = \1%journal_title%~~~~~
SAY 0x0 @800177
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11887[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310072 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11887[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310072 = \1%journal_title%~~~~~
SAY 0x0 @800177
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@11886[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310073 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@11886[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310073 = \1%journal_title%~~~~~
SAY 0x0 @800178
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10000[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310525 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10000[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310525 = \1%journal_title%~~~~~
SAY 0x0 @800178
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@10001[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310526 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@10001[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310526 = \1%journal_title%~~~~~
SAY 0x0 @800179
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16551[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310328 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16551[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310328 = \1%journal_title%~~~~~
SAY 0x0 @800179
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16552[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310329 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16552[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310329 = \1%journal_title%~~~~~
SAY 0x0 @800179
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@16553[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310330 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@16553[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310330 = \1%journal_title%~~~~~
//chapter texts are actually being used//////////////////////////////
//SAY 0x0 @800180
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@16190[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310733 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@16190[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310733 = \1%journal_title%~~~~~
//SAY 0x0 @800181
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@15836[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310734 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@15836[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310734 = \1%journal_title%~~~~~
//SAY 0x0 @800182
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@15837[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310735 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@15837[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310735 = \1%journal_title%~~~~~
//SAY 0x0 @800183
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@15838[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310736 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@15838[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310736 = \1%journal_title%~~~~~
//SAY 0x0 @800184
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@15839[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310737 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@15839[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310737 = \1%journal_title%~~~~~
//SAY 0x0 @800185
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@15840[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310738 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@15840[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310738 = \1%journal_title%~~~~~
//SAY 0x0 @800186
//READ_STRREF 0x0 journal_title
//REPLACE_TEXTUALLY ~~~~~@15841[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310739 = \1%journal_title%\2%journal_title%~~~~~
//REPLACE_TEXTUALLY ~~~~~@15841[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310739 = \1%journal_title%~~~~~
/////////////////////////////////////////////////////////////////////
SAY 0x0 @800187
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9991[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310375 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9991[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310375 = \1%journal_title%~~~~~
SAY 0x0 @800187
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9992[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310376 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9992[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310376 = \1%journal_title%~~~~~
SAY 0x0 @800187
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9996[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310377 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9996[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310377 = \1%journal_title%~~~~~
SAY 0x0 @800188
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9998[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310449 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9998[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310449 = \1%journal_title%~~~~~
SAY 0x0 @800188
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@9999[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310450 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@9999[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310450 = \1%journal_title%~~~~~
SAY 0x0 @800189
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6581[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310740 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6581[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310740 = \1%journal_title%~~~~~
SAY 0x0 @800189
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6582[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310741 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6582[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310741 = \1%journal_title%~~~~~
SAY 0x0 @800189
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6586[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310742 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6586[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310742 = \1%journal_title%~~~~~
SAY 0x0 @800190
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@22924[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310047 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@22924[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310047 = \1%journal_title%~~~~~
SAY 0x0 @800191
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23528[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310540 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23528[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310540 = \1%journal_title%~~~~~
SAY 0x0 @800192
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@23540[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310776 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@23540[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310776 = \1%journal_title%~~~~~
SAY 0x0 @800193
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20371[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310743 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20371[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310743 = \1%journal_title%~~~~~
SAY 0x0 @800194
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@20367[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310744 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@20367[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310744 = \1%journal_title%~~~~~
SAY 0x0 @800195
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@4371[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310745 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@4371[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310745 = \1%journal_title%~~~~~
SAY 0x0 @800196
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@5830[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310746 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@5830[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310746 = \1%journal_title%~~~~~
SAY 0x0 @800197
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6576[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310748 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6576[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310748 = \1%journal_title%~~~~~
SAY 0x0 @800198
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6601[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310749 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6601[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310749 = \1%journal_title%~~~~~
SAY 0x0 @800199
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6943[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310790 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6943[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310790 = \1%journal_title%~~~~~
SAY 0x0 @800200
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6945[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310791 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6945[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310791 = \1%journal_title%~~~~~
SAY 0x0 @800201
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6552[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310792 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6552[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310792 = \1%journal_title%~~~~~
SAY 0x0 @800202
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6538[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310794 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6538[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310794 = \1%journal_title%~~~~~
SAY 0x0 @800203
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@6356[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310795 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@6356[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310795 = \1%journal_title%~~~~~
SAY 0x0 @800204
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7090[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310796 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7090[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310796 = \1%journal_title%~~~~~
SAY 0x0 @800205
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@7123[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310799 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@7123[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310799 = \1%journal_title%~~~~~
SAY 0x0 @800206
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@8730[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310801 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@8730[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310801 = \1%journal_title%~~~~~
SAY 0x0 @800207
READ_STRREF 0x0 journal_title
REPLACE_TEXTUALLY ~~~~~@8058[ ]*=[ ]*\([~"%]\)\([^~"%]*[~"%][ ]*[~"%]\)~~~~~ ~~~~~@310802 = \1%journal_title%\2%journal_title%~~~~~
REPLACE_TEXTUALLY ~~~~~@8058[ ]*=[ ]*\([~"%]\)~~~~~ ~~~~~@310802 = \1%journal_title%~~~~~
DELETE_BYTES 0x0 4