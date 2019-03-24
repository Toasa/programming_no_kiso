(* 目的: ２つの昇順に並んだリストを順序を保ったままマージする *)
(* merge: int list -> int list -> int list *)
let rec merge l1 l2 = match l1 with
| [] -> l2
| first_l1 :: rest_l1 -> match l2 with
    | [] -> l1
    | first_l2 :: rest_l2 ->
        if first_l1 < first_l2 then first_l1 :: merge rest_l1 l2
        else first_l2 :: merge l1 rest_l2


(* 目的: ２つの昇順に並んだリストを順序を保ったままマージする *)
(* merge: int list -> int list -> int list *)
let rec merge_better l1 l2 = match (l1, l2) with
    | ([], []) -> []
    | ([], first_l2 :: rest_l2) -> l2
    | (first_l1 :: rest_l1, []) -> l1
    | (first_l1 :: rest_l1, first_l2 :: rest_l2)
        -> if (first_l1 < first_l2)
           then first_l1 :: merge_better rest_l1 l2
           else first_l2 :: merge_better l1 rest_l2

let l1 = [1; 4; 8; 9]
let l2 = [2; 3; 5; 11]

let test = merge_better l1 l2 = [1; 2; 3; 4; 5; 8; 9; 11]
