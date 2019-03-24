(* 目的: 鶴の数を与えると、足の本数を返す *)
(* tsuru_no_ashi: int -> int *)
let tsuru_no_ashi x = x * 2

(* 目的: 亀の数を与えると、足の本数を返す *)
(* kame_no_ashi: int -> int *)
let kame_no_ashi x = x * 4

(* 目的: 鶴と亀の数を与えると、足の本数の合計を返す *)
(* tsurukame_no_ashi: int -> int -> int *)
let tsurukame_no_ashi t k = tsuru_no_ashi t + kame_no_ashi k

(* 目的: 鶴と亀の数の合計と足の数の合計を与えると、鶴の数を返す *)
(* tsurukame: int -> int -> int *)
let tsurukame num ashi = (4 * num - ashi) / 2

(* test *)
let test1 = tsuru_no_ashi 2 = 4
let test2 = tsuru_no_ashi 10 = 20

let test3 = kame_no_ashi 3 = 12
let test4 = kame_no_ashi 5 = 20

let test5 = tsurukame_no_ashi 1 1 = 6
let test6 = tsurukame_no_ashi 2 3 = 16
let test7 = tsurukame_no_ashi 2 1 = 8

let test8 = tsurukame 7 24 = 2
