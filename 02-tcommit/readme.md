TLA+ 
- All values are sets
- Syntax for array expression is `[variable \in set |-> expression]`
  - "|->" is "MAPS TO"
  - Example: `sqr == [i \n 1..42 |-> i^2]` "defines `sqr` to be an array with index set 1..42 such that `sqr[i] = i^2` for all `i` in `1..42`."
- Terminology:
    | Programming | Math     | TLA+     |
    |-------------|----------|----------|
    | array       | function | function |
    | index set   | domain   | domain   |
    | f[e]        | f(e)     | f[e]     |
- "\E variable" means "EXISTS", and creates a local variable scoped to this function
- `set' = [set EXCEPT ![e] = "value"]` is shorthand for `set' = [e \in set |-> if e = x THEN "value" ELSE set[e]]`
  - Basically, check that the value for `set[e]` has changed, and all others remain the same
- "\A variable" means "FOR ALL", e.g. `\A x \in Y : Func(x)` -- which means for all values in the set `Y`, `Func` is `TRUE`
- "~" means "IS NOT TRUE", in the same way that "!" does in C-like languages
- Comments
  - `Foo = FALSE \* End of line comment`
  - `Foo = (* Inline Comment *) FALSE`
  - ```
    Foo = FALSE (***************)
                (* Box Comment *)
                (***************)
    ```
- Can also use "----" to create decorative separators
  - Must be at least 4 hyphens in a row
