(* Nothing crazy.
 * Don't use "heavy weapons" when not needed.
 *)
let both_true f g x = f x = true && g x = true;;


let is_positive x = x > 0;;
let is_even x = x mod 2 = 0;;
let is_positive_and_even = both_true is_positive is_even;;
assert(is_positive_and_even 4 = true);;
assert(is_positive_and_even 3 = false);;
