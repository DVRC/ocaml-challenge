(* Free practice I guess.
 * I should also stop writing cheeky comments in University notes...
 *)

(* int -> bool *)
let f1 (x: int) = x - 1;;

(* Inside joke from a past exam... *)
f1 6;;

(* bool -> int *)
let f2 x = if x = true then 1 else 0;;

f2 true;;
f2 false;;

(* int -> (int * bool) *)
let f3 x = match x with
    x when x mod 2 = 0 -> (x, true)
  | _ -> (x, false)
;;

f3 3;;
f3 8;;

(* int -> (int -> int) *)
let f5 x = if (x mod 2 = 0) then
    fun x -> x mod 3
  else fun x -> x mod 5;;

(f5 3) 5;;
(f5 2) 5;;

(* int -> (int -> bool).
 * Return a function that checks if an int value is a multiple of 8.
 * Otherwise return a function that is always false.
 *)
let f6 x = if (x mod 4) = 0 then
    fun x -> (x mod 8) = 0
  else fun x -> false
;;

(* bool -> (int -> bool) *)
let f7 = function
    true -> fun x -> (x mod 4) = 0
  | false -> fun x -> (x mod 2) = 0
;;

(* bool -> (bool -> int) *)
(* I have no imagination... *)
let f8 x = function
    x when x = true -> fun y -> if y = true then 42 else 420
  | _ -> fun y -> if y = true then 99 else 1138
;;

(* bool -> (int -> int) *)
let f9 = function
    true -> fun x -> if x mod 2 = 0 then x else x + 1
  | false -> fun x -> if x mod 4 = 0 then x else (x - (x mod 4) + 4)
;;

(* To Be continued... *)
(* (int -> int) -> int *)

(* (int -> bool) -> int *)

(* (bool -> int) -> int *)

(* (int -> bool) -> bool *)

(* (bool -> bool) -> int *)

(* int -> (int * int) -> int *)

(* int -> (int -> (int -> int)) *)

(* (int -> int) -> (int -> int) *)

(* ((int -> int) -> int) -> int *)

(* (int -> int) -> (bool -> bool) *)

(* (int -> bool) -> (bool -> int) *)
