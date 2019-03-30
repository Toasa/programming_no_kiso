#use "./tree.ml"

(* 目的: tree_t型の木を受け取り、格納された値を2倍にした木を返す *)
(* tree_double: tree_t -> tree_t *)
let rec tree_double t = match t with
    | Empty -> Empty
    | Leaf (n) -> Leaf (2 * n)
    | Node (lt, n, rt) -> Node ((tree_double lt), 2 * n, (tree_double rt))

let test1 = tree_double tree2
            = Leaf 6
let test2 = tree_double tree3
            = Node (Empty, 8, Leaf 6)
let test3 = tree_double tree4
            = Node (Leaf 6, 20, Node (Empty, 8, Leaf 6))
