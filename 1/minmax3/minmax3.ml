(* Am I allowed to use the "and" and "in" keywords? *)
let minmax3 a b c =
  let findmin a b c =
    if a < b && a < c then a
    else if b < a && b < c then b
    else c
  and findmax a b c =
    if a >= b && a >= c then a
    else if b >= a && b >= c then b
    else c
  in (findmin a b c, findmax a b c);;

minmax3 2 9 1;;
minmax3 9 4 9 ;;
minmax3 9 9 4;;
minmax3 'a' 'f' 'x';;
minmax3 3.14 (-2.4) 1.61
