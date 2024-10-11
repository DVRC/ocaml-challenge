let xor1 p q = (not p && q) || (p && not q);;

let xor2 p q = if (p && not q) || (q && not p) then true else false;;

let xor3 p q = match (p, q) with
    (false, false) -> false
  | (true, true) -> false
  | _ -> true
;;

assert((xor1 false false) == false);;
assert((xor1 true false) == true);;
assert((xor1 false true) == true);;
assert((xor1 true true) == false);;

assert((xor2 false false) == false);;
assert((xor2 true false) == true);;
assert((xor2 false true) == true);;
assert((xor2 true true) == false);;

assert((xor3 false false) == false);;
assert((xor3 true false) == true);;
assert((xor3 false true) == true);;
assert((xor3 true true) == false);;
