type season = Spring | Summer | Autumn | Winter;;

(* Common lexical scope W
 * BTW, I kinda write OCaml as if it was C. I kinda miss the possibility of
 * istantiating variables and having a temporary local state
 *)
let squirrel_play temp season = match season with
    Summer -> temp >= 15 && temp <= 35
  | _ -> temp >= 16 && temp <= 30
;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;
