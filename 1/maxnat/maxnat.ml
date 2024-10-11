(* I split a and b because I wanted to highligh a different error *)
let max_nat a b =
  if a > 0 then
    if b > 0 then
      if a > b then a else b
    else failwith("b is not natural")
  else failwith("a is not natural");;


assert(max_nat 2 5 = 5);;
assert(max_nat 5 2 = 5);;
assert(try max_nat (-2) 5 |> fun _ -> false with _ -> true);;
assert(try max_nat 2 (-5) |> fun _ -> false with _ -> true);;
assert(try max_nat (-2) (-5) |> fun _ -> false with _ -> true);;
