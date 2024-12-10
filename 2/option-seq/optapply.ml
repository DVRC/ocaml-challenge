let opt_apply f x =
  let untag x = match x with
      (Some x) -> x
    | None -> failwith("Can't happen")
  in
  if f = None then None
  else
  if x = None then None else Some ((untag f) (untag x));;

let (<*>) = opt_apply;;

let square x = x * x
let double x = 2 * x
let multiply x y = x * y;;

assert (Some square <*> None = None);;
assert (None <*> Some 2 = None);;
assert (None <*> (Some double <*> Some 2) = None);;
assert (Some multiply <*> Some 3 <*> Some 2 = Some 6);;
assert (Some multiply <*> None <*> Some 2 = None);;

