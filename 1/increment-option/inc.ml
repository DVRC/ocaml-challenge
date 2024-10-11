let incr_opt x = match x with
    Some x -> Some (x + 1)
  | None -> None
;;

incr_opt (Some 5) = Some 6;;
incr_opt None = None;;
