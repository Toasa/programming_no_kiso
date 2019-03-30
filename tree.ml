type tree_t =
    | Empty
    | Leaf of int
    | Node of (tree_t * int * tree_t)

let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 10, tree3)

(* 目的: 木に格納された整数をすべて加える *)
(* sum_tree: tree_t -> int *)
let rec sum_tree t = match t with
    | Empty -> 0
    | Leaf (n) -> n
    | Node (l_t, n, r_t) -> (sum_tree l_t) + n + (sum_tree r_t)

let test1 = sum_tree tree3 = 7
let test2 = sum_tree tree4 = 20
