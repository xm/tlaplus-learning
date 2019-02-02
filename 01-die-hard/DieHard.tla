------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers
VARIABLES big, small

Init == /\ big   = 0 
        /\ small = 0
        
TypeOK ==  /\ big   \in 0..5
           /\ small \in 0..3
        
FillBig == /\ big'   = 5
           /\ small' = small

FillSmall == /\ small' = 3
             /\ big'   = big
             
EmptyBig == /\ big'   = 0
            /\ small' = small

EmptySmall == /\ small' = 0
              /\ big'   = big
             
BigToSmall == IF big + small =< 5 
                THEN /\ big'   = big + small
                     /\ small' = 0
                ELSE /\ big'   = 5
                     /\ small' = small - (5 - big)

SmallToBig == IF big + small =< 3
                THEN /\ small' = big + small
                     /\ big'   = 0
                 ELSE /\ small' = 3
                      /\ big'   = big - (3 - small)

Next == \/ FillBig
        \/ FillSmall
        \/ EmptyBig
        \/ EmptySmall
        \/ BigToSmall
        \/ SmallToBig
=============================================================================
