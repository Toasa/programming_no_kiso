#use "./filter.ml"

(* 目的: 偶数かどうかのチェック *)
(* is_even: int -> bool *)
let is_even n = (n mod 2 = 0)

(* 目的: リストを受け取り、その中の偶数を要素に持つリストを返す *)
(* even: int list -> int list *)
let even l = filter is_even l

let l = [-1; 2; -3; 4; -5; 6; -7; 8; -9; 10]

let test = even l
