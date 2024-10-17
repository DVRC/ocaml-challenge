let square x = x * x;;

(* ((2 ^ 2) ^ 2 ^ 2 = 2^8 *)
let exp9 x = square(square(square(x))) * x;;

exp9 2;; (* 2^9 is 512 *)
