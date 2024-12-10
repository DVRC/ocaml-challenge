(* After many days, I realized that I needed to specify the function. I guess
 * that type inference alone couldn't figure it out
*)
let comp (f: 'b -> 'c) (g: 'a -> 'b) = function
  x -> (f (g x));;


let double x = x * 2;;
let square x = x * x;;

assert((comp square double) 3 = 36);;
assert((comp double square) 3 = 18);;

assert(comp (fun b -> if b then 0 else 1) (fun x -> x>0) 3 = 0);;
assert(comp (fun b -> if b then 0 else 1) (fun x -> x>0) 0 = 1);;
