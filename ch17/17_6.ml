#use "./tree.ml"

(* 目的: (int -> int)型の関数fとtree_t型の木を受け取り、
木に格納された値にfを施してできる新しい木を返す *)
(* tree_map: (int -> int) tree_t -> tree_t *)
let rec tree_map f tree = match tree with
    | Empty -> Empty
    | Leaf (n) -> Leaf (f n)
    | Node (lt, n, rt) -> Node ((tree_map f lt), f n, (tree_map f rt))

let test1 = tree_map (fun n -> 2 * n) tree4
            = Node (Leaf 6, 20, Node (Empty, 8, Leaf 6))

let test2 = tree_map (fun n -> n * n) tree4
            = Node (Leaf 9, 100, Node (Empty, 16, Leaf 9))
