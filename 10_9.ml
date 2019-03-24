(* 目的: ２つのリストを受け取り、その長さが同じかどうか判定する *)
(* equal_len: l1 -> l2 -> bool *)
let rec equal_len l1 l2 = match (l1, l2) with
    | ([], []) -> true
    | (first_l1 :: rest_l1, []) -> false
    | ([], first_l2 :: rest_l2) -> false
    | (first_l1 :: rest_l1, first_l2 :: rest_l2) -> equal_len rest_l1 rest_l2

let l1 = [30; 40; 50]
let l2 = [20; 10]
let l3 = [10; 15; 20;]

let test1 = equal_len l1 l2 = false
let test2 = equal_len l2 l3 = false
let test3 = equal_len l1 l3 = true
