(* Rule n.1: always read twice the text of the exercise. The answer might not be
 * that obvious.
 *)
let alt a b = match (a,b) with
    (Some x, None) -> Some x
  | (None, Some x) -> Some x
  | (Some x, Some y) -> Some x
  | _ -> None
;;

let (<|>) = alt;;

assert (None <|> Some false = Some false);;
assert (Some true <|> None <|> Some false = Some true);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> None <|> Some "dog" <|> None = Some "dog");;
