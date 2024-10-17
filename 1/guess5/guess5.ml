let guess5 b =
  if b < 1 || b > 5 then failwith("Out of range")
  else let r = Random.int(5) + 1 in (b = r, r)
;;

guess5 3;;
guess5 5;;
guess5 6;;
guess5 (-2);;
