(* Is there a way to define a inner function while defining an operator?
 * Something like:
 * let (~.) = let foo a ...;;
*)

(* At first the exercise request might be intimidating.
 * This function doesn't return any function, but it just "tests" whether the
 * two input functions are semantically equivalent.
 *
 * It's surprising how many times the answer is actually simpler than you
 * think...
 *)
let eqfun p q = (p true) = (q true) && (p false) == (q false);;

let (=?) = eqfun;;

assert ((fun b -> true) =? (fun b -> true));;
assert ((fun b -> b) =? (fun b -> true) = false);;
assert ((fun b -> false) =? (fun b -> true) = false);;
assert (not =? (fun b -> not (not b)) = false);;
assert ((fun b -> b) =? (fun b -> not (not b)));;
