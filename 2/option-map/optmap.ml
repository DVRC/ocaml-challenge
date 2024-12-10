(* It is quite "nasty", but it works. *)
let option_map f x =
  let untag x = match x with
    (Some x) -> x
    | None -> failwith("Can't happen")
  in if x = None then None else (Some (f(untag x)));;

let double x = x * 2;;
let square x = x * x;;

assert (option_map double (Some 3) = Some 6);;
assert (option_map double None = None);;
assert (option_map double (Some (square 3)) = Some 18);;
assert (option_map square (option_map double None) = None);;
