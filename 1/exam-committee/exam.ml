type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;


(* I had to think quite a bit to get it right.
 * One strong rejection is enough to not pass the exam, regardless of
 * positive vote.
 * Then check that two committee members didn't cast a WeakReject. In
 * this way I don't have to check for StrongAccept or WeakAccept.
 *)
let decide_exam m1 m2 m3 =
  if m1 = StrongReject || m2 = StrongReject || m3 = StrongReject then false
  else
  not ((m1 = WeakReject && m1 = m2) ||
       (m2 = WeakReject && m2 = m3) ||
       (m3 = WeakReject && m1 = m3))
;;


decide_exam WeakAccept WeakAccept WeakReject;;

decide_exam WeakReject WeakAccept StrongAccept;;

decide_exam WeakReject StrongAccept WeakReject;;

decide_exam StrongAccept StrongReject StrongAccept;;
