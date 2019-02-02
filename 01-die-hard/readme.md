# The Die Hard Problem

NYPD officer John McClane and shop owner Zeus Carver are in quite the predicament. A psychopath who calls himself Simon is detonating bombs all over New York City. McClane and Zeus find another bomb in Central Park, and to disarm it they need to solve Simon's riddle.

The bomb is in a briefcase with a precise electronic scale. McClane and Zeus have a 5-gallon jug and a 3-gallon jug. They are standing next to a fountain where they can take as much water as they want. They have 5 minutes to put one of the jugs on the scale with exactly 4 gallons of water in it, or the bomb will detonate.

How do you get exactly 4 gallons of water into one of the jugs?

# Solution

Using TLA+ we can solve this by first creating the specifications for this problem. Then we can use the "TLC Model Checker" with an invariant of "big /= 4" to figure out the steps required to get 4 gallons into the big 5-gallon jug.

# Notes

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
