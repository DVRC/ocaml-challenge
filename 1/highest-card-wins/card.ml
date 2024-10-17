type card = Joker | Val of int;;

let win player dealer = match (player, dealer) with
    (_, Joker) -> false (* Here the player can have a joker *)
  | (Joker, x) -> true
  | _ -> player > dealer
;;

(* I cannot just pass an integer, otherwise it wouldn't be of type Card *)
win (Val 8) Joker;;
win (Val 8) (Val 7);;
win (Val 7) (Val 9);;
win Joker Joker;;
win Joker (Val 7);;
