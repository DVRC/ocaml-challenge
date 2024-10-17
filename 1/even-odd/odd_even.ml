(* In C this could be written as "!(x & 1)", assuming either 2 complement or
 * sign-magnitude representation of integers
 *)
let is_even x = (x mod 2) = 0;;

(* Is 'Do not use the if-then-else construct' referred to the 'is_even' or to the
 * whole exercise?
 *)
let win a b =
  if (a <= 0 || a > 5) && (b <= 0 || b > 5) then 0
  else if (a <= 0 || a > 5) then -1
  else if (b <= 0 || b > 5) then 1
  else if is_even(a+b) then 1 else -1;;

win 0 9;;
win 9 0;;
win 1 8;;
win 8 1;;
win 3 3;;
win 3 2;;
