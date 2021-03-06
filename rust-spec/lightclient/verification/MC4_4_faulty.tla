---------------------------- MODULE MC4_4_faulty ---------------------------

AllNodes == {"n1", "n2", "n3", "n4"}
TRUSTED_HEIGHT == 1
TARGET_HEIGHT == 4
TRUSTING_PERIOD == 1400 \* two weeks, one day is 100 time units :-)
IS_PRIMARY_CORRECT == FALSE
FAULTY_RATIO == <<1, 3>>    \* < 1 / 3 faulty validators

VARIABLES
  state, nextHeight, fetchedLightBlocks, lightBlockStatus, latestVerified,
  nprobes,
  now, blockchain, Faulty

(* the light client previous state components, used for monitoring *)
VARIABLES
  prevVerified,
  prevCurrent,
  prevNow,
  prevVerdict

INSTANCE Lightclient_003_draft
==============================================================================
