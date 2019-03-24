(* 目的: 受け取った実数xの絶対値を計算する *)
(* abs: float -> float *)
(* -.は実数の符号を反転させる単項演算子 *)
let abs x = if x >= 0. then x else -. x

let test1 = abs 2.8 = 2.8
let test2 = abs (-2.8) = 2.8
let test3 = abs 0. = 0.
