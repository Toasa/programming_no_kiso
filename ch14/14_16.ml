(* 目的: nから1までのリストを返す *)
(* enumerate: int -> int list *)
let rec enumerate n =
    if n > 1
    then n :: enumerate (n - 1)
    else n :: []

(* 目的: 階乗を求める *)
let faq n = List.fold_right ( * ) (enumerate n) 1

let test = faq 6 = 720
