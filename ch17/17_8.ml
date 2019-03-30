#use "./tree.ml"

(* 目的: tree_t型の木を受け取り、木の深さを返す *)
(* tree_depth: tree_t -> int *)
let rec tree_depth tree = match tree with
    | Empty -> 0
    | Leaf (n) -> 0
    | Node (lt, n, rt) -> 1 + max (tree_depth lt) (tree_depth rt)

let test1 = tree_depth tree3 = 1
let test2 = tree_depth tree4 = 2
