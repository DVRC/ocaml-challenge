(* the "&& true") is needed to coherce the function to be boolean, otherwise it
 * would work for arbitrary types
 *)
let mux2 sel a b = if sel then b && true else a && true;;

let mux2_bool sel a b = (not sel && a) || (sel && b);;

let mux2_match sel a b = (match sel with
    false -> a
  | true -> b) && true
;;

(* This is built in MSB order *)
let mux4 sel0 sel1 a0 a1 a2 a3 = mux2 sel0 (mux2 sel1 a0 a1) (mux2 sel1 a2 a3);;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;
