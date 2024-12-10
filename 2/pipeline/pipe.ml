let pipe f x = x f;;

(* I didn't know that in OCaml new operators can be defined *)
let (|>) = pipe;;

let double x = x * 2;;

let square x = x * x;;

3 |> double = double 3;;
3 |> double |> square = square (double 3);;
3 |> double |> square |> double = double (square (double 3));;
