---- MODULE MC ----
EXTENDS TCommit, TLC

\* CONSTANT definitions @modelParameterConstants:0RM
const_154915343533450000 == 
{"r1", "r2", "r3"}
----

\* INIT definition @modelBehaviorInit:0
init_154915343533451000 ==
TCInit
----
\* NEXT definition @modelBehaviorNext:0
next_154915343533452000 ==
TCNext
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_154915343533453000 ==
TCTypeOK
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_154915343533454000 ==
TCConsistent
----
=============================================================================
\* Modification History
\* Created Sat Feb 02 16:23:55 PST 2019 by christianm
