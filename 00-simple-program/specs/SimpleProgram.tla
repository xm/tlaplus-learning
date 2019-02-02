--------------------------- MODULE SimpleProgram ---------------------------
EXTENDS Integers
VARIABLES i, pc

Init == (pc = "start") /\ (i = 0)

Pick == \/ /\ pc = "start"
           /\ i' \in 0..999
           /\ pc' = "middle"
           
Add1 == \/ /\ pc = "middle"
           /\ i' = i + 1
           /\ pc' = "done"
           
Next == Pick \/ Add1
=============================================================================
