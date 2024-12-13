(* Free practice I guess.
   I should also stop writing cheeky comments in University notes... *)

(* int -> bool *)
let f1 x = (x - 1) < 3;;

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
   Return a function that checks if an int value is a multiple of 8.
   Otherwise return a function that is always false. *)
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
    true -> fun x -> x
  | false -> fun x -> -x
;;

(* (int -> int) -> int *)
(* This is a function with a constant, because if I write instead a function
   that accepts another parameter, the type of this last one would be
   (int -> int) -> int -> int  *)
let f10 f = if (f 4) > 0 then (f 4) + 2 else (f 4) - 1;;

(* (int -> bool) -> int *)
let f11 f = if (f 4) then 3 else 7;;

(* (bool -> int) -> int *)
let f12 f = if (f true) = 0 then 1 else 0;;

(* (int -> bool) -> bool *)
let f13 f = not (f 2);;

(* (bool -> bool) -> int *)
let f14 f = 99 + if (f false) then 0 else 1;;

(* int -> (int * int) -> int *)
(* Function that wants an int and returns a function that accepts a pair of ints
   and returns an int.
   Here I learn for good that the '->' is right associative  *)
let f15 x = if x mod 2 = 0 then
    fun x -> snd(x) + 1
  else
    fun x -> fst(x) - 1;;

(* This is quite akward, but legit. I have yet to write something cool that
 * can use these kinds of "expressions"
 *)
(f15 3) (3, 5);;
(f15 2) (3, 5);;

(* int -> (int -> (int -> int)) *)
(* From int to a function that accepts an int and returns a pair of ints *)
let f16 x = match x with
    x when x > 0 -> fun x -> (x, x * x)
  | _ -> fun x -> (x, -x)
;;

(* (int -> int) -> (int -> int) *)
(* Function from int to int that returns a function from int to int *)
let f17 f = if (f 8) > 0 then
    fun x -> x
  else
    fun x -> x + 8;;

let add10 x = x + 10;;
let neg x = -x;;

(f17 add10)(12);;
(f17 neg)(-9);;

(* ((int -> int) -> int) -> int *)
(* Adding zero is a crusty way to force the type.
   Also, it wasn't trivial to understand and write a function that respected
   the type *)
let f18 f = f (fun x -> (x + 0) mod 2) + 0;;

(* (int -> int) -> (bool -> bool) *)
(* Function that accepts a function from int to int and returns a function
   form bool to bool  *)
let f19 f = fun x -> not x && (f 24 != 0);;

(* (int -> bool) -> (bool -> int) *)
(* Function that accepts a function from int to bool and returns a function
   from bool to int *)
let f20 f = if (f 2) then
    fun x -> if x = true then 0 else 1
  else
    fun x -> if x = true then -1 else 0;;
