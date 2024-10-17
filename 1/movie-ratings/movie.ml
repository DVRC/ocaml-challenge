(* This is fairly ugly. I wonder if there's a more elegant solution*)

let movie_rating a b c =
  if (a < 0 || a > 5) ||
     (b < 0 || b > 5) ||
     (c < 0 || c > 5)
  then failwith("At least one argument is out of range")
  else match (a, b, c) with
      (5,5,5) -> "Masterpiece"
    | (5,5,4) | (5,4,5) | (4,5,5) -> "Highly Recommended"
    | (4,4,_) | (4,_,4) | (_,4,4) ->
      if (a + b + c) >= 11 && (a + b + c) < 14
      then "Recommended" else "Mixed reviews"
    | _ -> "Mixed reviews"
;;

movie_rating 4 5 4;;
