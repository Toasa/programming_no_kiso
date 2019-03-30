#use "./tree.ml"

(* 目的: tree_t型の木を受け取り、節と葉の合計の数を返す *)
(* tree_length: tree_t -> int *)
let rec tree_length tree = match tree with
    | Empty -> 0
    | Leaf (n) -> 1
    | Node (lt, n, rt) -> 1 + (tree_length lt) + (tree_length rt)

let test1 = tree_length tree3 = 2
let test2 = tree_length tree4 = 4
