(* Initially I expected to "strip" the "Some" from the result, but I guess it's
 * not an issue.
 * BTW, I remember my childhood summers when the neighbor had a parrot which
 * started making verses early in the morning...
 *)
let parrot_trouble talk time =
  if time < 0 || time > 23 then
    None
  else
  if (time < 7 || time > 20) && talk then
    Some true
  else
    Some false
;;

parrot_trouble true 22;;
parrot_trouble true 5;;
parrot_trouble false 21;;
parrot_trouble true 12;;
