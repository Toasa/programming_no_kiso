(* 目的: nから1までのリストを返す *)
(* enumerate: int -> int list *)
let rec enumerate n =
    if n > 1
    then n :: enumerate (n - 1)
    else n :: []

(* 目的: nの約数のリストを返す *)
(* divisor: int -> int list *)
let divisor n =
    let n_to_1 = enumerate n in
    List.filter (fun x -> n mod x = 0) n_to_1

(* 完全数 *)
(* nが完全(perfect)とは、nの約数のうち自身の以外を足し合わせた数がnとなるようなもの *)
(* 目的: n以下の完全数のリストを返す *)
(* perfect: int -> int list *)
let perfect n =
    let sum l = List.fold_right (+) l 0 in
    List.filter (fun m -> ((sum (divisor m)) =  2 * m))
                (enumerate n)

let test = perfect 10000
