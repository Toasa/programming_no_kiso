(* 目的: nから1までのリストを返す *)
(* enumerate: int -> int list *)
let rec enumerate n =
    if n > 1
    then n :: enumerate (n - 1)
    else n :: []

(* 目的: nから1までの合計を返す *)
(* one_to_n: int -> int *)
let one_to_n n = List.fold_right (+) (enumerate n) 0

let test = one_to_n 10 = 55
