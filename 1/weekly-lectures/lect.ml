type weekday = Mo | Tu | We | Th | Fr;;

type course = ALF | LIP;;

(* I was ready to use the heavy weapons, but then I realized there was a
 * simpler way to do it...
*)
let isLecture d c = match c with
    ALF -> d != Mo && d != We
  | LIP -> d == We || d == Th
;;

assert((isLecture Mo ALF) == false);;
assert((isLecture We ALF) == false);;
assert((isLecture Mo LIP) == false);;
assert((isLecture Tu LIP) == false);;
assert((isLecture Fr LIP) == false);;
