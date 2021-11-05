// play nered07.wav when Shoal kisses
REPLACE_TRANS_ACTION ~shoal~ BEGIN 1 2 3 END BEGIN END ~Kill(LastTalkedToBy)~
 ~PlaySound("NERED07")
  Wait(1)
  Kill(LastTalkedToBy)~
