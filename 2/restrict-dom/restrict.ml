(* The procedural form, but there is no fun in doing "the trivial thing" *)
let restrict_p f p x =
  if (p x) = true then (Some (f x)) else None;;

let restrict_m f p x = match (p x) with
    true -> Some (f x)
  | false -> None
;;

let restrict_f f p = function
    x when (p x) = true -> Some (f x)
  | _ -> None
;;

let restrict = restrict_f;;

let f1 = restrict succ (fun x -> x>0);;
assert (f1 1 = Some 2);;
assert (f1 0 = None);;

let f2 = restrict (fun (x,y) -> x - y) (fun (x,y) -> x-y>=0);;
assert(f2 (5,2) = Some 3);;
assert(f2 (5,6) = None);;
