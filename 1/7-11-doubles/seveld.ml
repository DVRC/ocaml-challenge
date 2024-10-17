let seven_eleven_doubles() =
  let b1 = Random.int(6) + 1
  and b2 = Random.int(6) + 1
  in (b1 = b2 || b1 + b2 = 7 || b1 + b2 = 11, b1, b2)
;;

seven_eleven_doubles();;
