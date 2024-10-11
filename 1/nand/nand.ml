let nand1 p q = not(p && q);;

let nand2 p q = if (p && q) then false else true;;

let nand3 p q = match(p, q) with
    (true, true) -> false
  | _ -> true
    ;;

assert((nand1 false false) == true);;
assert((nand1 true false) == true);;
assert((nand1 false true) == true);;
assert((nand1 true true) == false);;

assert((nand2 false false) == true);;
assert((nand2 true false) == true);;
assert((nand2 false true) == true);;
assert((nand2 true true) == false);;

assert((nand3 false false) == true);;
assert((nand3 true false) == true);;
assert((nand3 false true) == true);;
assert((nand3 true true) == false);;
