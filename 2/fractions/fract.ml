(* I write "fract" instead of "frac" because of NeWS... *)

let is_posfract = function
    (x,y) when x >= 0 && y >= 0 -> true
  | (x,y) when x < 0 && y < 0 -> true
  | _ -> false;;

is_posfract (5,4);;
is_posfract (-5,-4);;
is_posfract (-5,4);;
is_posfract (5,-4);;

(* FORBIDDEN SOLUTIONS *)
let compare_posfract a b =
  let fractval = function (x,y) -> float_of_int x /. float_of_int y
in
  if is_posfract a && is_posfract b
  then match (fractval a, fractval b) with
      (x,y) when x = y -> 0
    | (x,y) when x > y -> 1
    | _ -> -1
  else failwith "At least one fract is negative";;



let compare_fract a b =
  let fractval = function (x,y) -> float_of_int x /. float_of_int y
in
   match (fractval a, fractval b) with
      (x,y) when x = y -> 0
    | (x,y) when x > y -> 1
    | _ -> -1
;;

(* Acceptable solutions *)

(* The idea is to reduce both fractions to the least common denominator and compare
 * the integer part
*)

(* To define the lowest common multiplier, I've got to define it in term of
 * greatest common divisor.
 *)
let rec gcd a b =
  if b = 0 then a
  else gcd b (a mod b);;

let abs a = if a < 0 then -a else a;;

let lcm a b = abs (a * b) / gcd a b;;

(* Combine together *)
let lcm a b =
  let rec gcd a b =
    if b = 0 then a
    else gcd b (a mod b)
  and abs a = if a < 0 then -a else a
  in abs (a * b) / gcd a b;;

lcm 27 9;;
gcd 27 9;;

(* Now that it works *)
let compare_posfract a b =
  if is_posfract a && is_posfract b then
    let fract_num = function (num, den) -> num
    and fract_den = function (num, den) -> den
    in let common_den = lcm (fract_den a) (fract_den b)
    in let adjusted_num fr = (common_den / fract_den fr) * fract_num fr
    in match (adjusted_num a, adjusted_num b) with
      x when a = b -> 0
    | x when a > b -> 1
    | _ -> -1
  else failwith "One of the two arguments is a negative fraction";;

assert (compare_posfract (1,2) (2,4) == 0);;
assert (compare_posfract (1,2) (1,3) == 1);;
assert (compare_posfract (1,2) (2,3) == -1);;

compare_fract (1,2) (1,2);;
compare_fract (1,2) (-1,-2);;
compare_fract (1,2) (-1,2);;
compare_fract (1,-2) (1,2);;
