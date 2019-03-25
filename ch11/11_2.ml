(* 目的: 漸化式を計算する関数 *)
(* let a: int -> int *)
let rec a n =
    if n = 0 then 3
    else 2 * (a (n - 1)) - 1

let test1 = a 1
let test2 = a 5
