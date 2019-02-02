TLA+
- "/=" and "#" are "NOT EQUALS"
- "=>" is "EQUAL TO OR GREATER THAN"
- "=<" is "EQUAL TO OR LESS THAN"

TLA+ Toolbox
- Can add invariants to models
    - Open model, go to "Model Overview", expand "Invariants", click "Add"
        - Can be inline or definitions, e.g. "TypeOK" defined in the spec
    - A useful one to add is a type check (see "TypeOK" in DieHard.tla)
- Can use invariants to see how a state can be reached
    - Example: in order to figure out steps to get the big jug filled with 4 gallons, we can add the invariant "big /= 4" to force an error when running "TLC Model Checker"
