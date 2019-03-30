#use "./bi_search_tree.ml"

(* 目的: 2分探索木treeにint型のnumを追加した2分探索木を返す *)
(* insert_tree: tree_t -> int -> tree_t *)
let rec insert_tree tree num = match tree with
    | Empty -> Leaf (num)
    | Leaf (n) ->
        if (num = n)
        then Leaf (n)
        else if num < n
             then Node (Leaf (num), n, Empty)
             else Node (Empty, n, Leaf (num))
    | Node (lt, n, rt) ->
        if (num = n)
        then Node (lt, n, rt)
        else if num < n
             then Node ((insert_tree lt num), n, rt)
             else Node(lt, n, (insert_tree rt num))

let test1 = insert_tree Empty 3 = Leaf (3)
let test2 = insert_tree (Leaf (3)) 2 = Node (Leaf (2), 3, Empty)
let test3 = insert_tree (Leaf (3)) 3 = Leaf (3)
let test4 = insert_tree (Leaf (3)) 4 = Node (Empty, 3, Leaf (4))
let test5 = insert_tree tree5 4 =
    Node (Node (Leaf (1), 2, Node (Empty, 3, Leaf (4))),
          6,
          Node (Empty, 7, Leaf (9)))
