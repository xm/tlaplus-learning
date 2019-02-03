------------------------------ MODULE TCommit ------------------------------
CONSTANT RM 
VARIABLE rmState

TCTypeOK == rmState \in [RM -> {"working", 
                                "prepared", 
                                "committed", 
                                "aborted"}]

TCConsistent == \A r1, r2 \in RM : ~ /\ rmState[r1] = "aborted"
                                     /\ rmState[r2] = "committed"

TCInit == rmState = [r \in RM |-> "working"]

Prepare(r) == /\ rmState[r] = "working"
              /\ rmState' = [rmState EXCEPT ![r] = "prepared"]

canCommit == \A r \in RM : rmState[r] \in {"prepared", "committed"}

notCommitted == \A r \in RM : rmState[r] /= "committed"

Decide(r) == \/ /\ rmState[r] = "prepared"
                /\ canCommit
                /\ rmState' = [rmState EXCEPT ![r] = "committed"]
             \/ /\ rmState[r] \in {"working", "prepared"}
                /\ notCommitted
                /\ rmState' = [rmState EXCEPT ![r] = "aborted"]

TCNext == \E r \in RM : Prepare(r) \/ Decide(r)
=============================================================================
\* Modification History
\* Last modified Sat Feb 02 16:23:55 PST 2019 by christianm
\* Created Sat Feb 02 15:26:09 PST 2019 by christianm
