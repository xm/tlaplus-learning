TLA+
- "/=" and "#" are "NOT EQUALS"
- "=>" is "EQUAL TO OR GREATER THAN"
- "=<" is "EQUAL TO OR LESS THAN"

TLA+ Toolbox
- Can add invariants to models
    - A useful one to add is a type check (see "TYpeOK" in DieHard.tla)
- Can use invariants to see how a state can be reached
    - Example: in order to figure out steps to get the big jug filled with 4 gallons, we can add the invariant "big /= 4" to force an error when running "TLC Model Checker"
