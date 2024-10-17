type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;

(* I had to think quite a bit to get it right.
 * One strong rejection is enough to not pass the exam, regardless of
 * positive votes.
 * Then check that two committee members didn't cast a WeakReject.
 * In this way I don't have to check for StrongAccept or WeakAccept.
 *)
let decide_exam m1 m2 m3 =
  if m1 = StrongReject || m2 = StrongReject || m3 = StrongReject then false
  else
  not ((m1 = WeakReject && m1 = m2) ||
       (m2 = WeakReject && m2 = m3) ||
       (m3 = WeakReject && m1 = m3))
;;

(* Better solution I figured out later *)
let decide_exam m1 m2 m3 =
  not(m1 = StrongReject || m2 = StrongReject || m3 = StrongReject) &&
  not ((m1 = WeakReject && m1 = m2) ||
       (m2 = WeakReject && m2 = m3) ||
       (m3 = WeakReject && m1 = m3))
;;


assert(decide_exam WeakAccept WeakAccept WeakReject = true);;
assert(decide_exam WeakAccept WeakReject WeakAccept = true);;
assert(decide_exam WeakReject WeakAccept WeakAccept = true);;

(* There are other permutations of this case to check, but I'm lazy :) *)
assert(decide_exam WeakReject WeakAccept StrongAccept = true);;
assert(decide_exam WeakReject StrongAccept WeakAccept = true);;

assert(decide_exam WeakReject StrongAccept WeakReject = false);;
assert(decide_exam WeakReject WeakReject StrongAccept = false);;
assert(decide_exam StrongAccept WeakReject WeakReject = false);;

assert(decide_exam StrongAccept StrongReject StrongAccept = false);;
assert(decide_exam StrongReject StrongAccept StrongAccept = false);;
assert(decide_exam StrongAccept StrongAccept StrongReject = false);;
