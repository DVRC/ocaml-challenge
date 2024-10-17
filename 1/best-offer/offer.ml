(* The fact that I can do these kinds of matches is insane.
 * Still, this solution is fairly crusty.
 *)

let best_offer a b c = match(a,b,c) with
    (None, None, None) -> None
  | (Some x, None, None) | (None, Some x, None) | (None, None, Some x) ->
    if x <= 0 then
      failwith("Can't offer 0 or less")
    else Some x
  | (Some x, Some y, None) | (Some x, None, Some y) | (None, Some x, Some y) ->
    if (x <= 0 || y <= 0) then
      failwith("Can't offer 0 or less")
    else Some (if x > y then x else y)
  | (Some x, Some y, Some z) ->
    if (x <= 0 || y <= 0 || z <= 0) then
      failwith("Can't offer 0 or less")
    else Some(
        if x > y && x > z then x
        else if y > x && y > z then y
        else z)
;;


best_offer (None) (None) (Some (17));; (* 17 dollars *)
best_offer (None) (None) (None);;
best_offer (None) (None) (Some 0);;
best_offer (None) (Some (-2000000)) (None);; (* "Due milioni mi devi dare" *)
best_offer (Some 500) (Some 300) (Some 501);;
best_offer (Some 200) (None) (Some 200);;
best_offer (Some 200) (Some 300) (None);;
