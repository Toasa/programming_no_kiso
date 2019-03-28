(* 目的: m >= n >= 0 である自然数m, n に対し、mとnの最大公約数を求める *)
(* gcd: int -> int -> int *)
let rec gcd m n =
    if n = 0
    then m
    else gcd n (m mod n)

(* 停止性: (gcd m n) => (gcd n (m mod n))となっており、m >= n, n > (m mod n),であるため、
よりより簡単な問題になっている。 *)
(* このような割り算は、あまりは0とどこかでなるため、有限回でとまる *)

let test1 = gcd 24 6 = 6
let test2 = gcd 56 24 = 8
