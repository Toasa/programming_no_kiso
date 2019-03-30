#use "./tree.ml"

let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Node (Leaf (1), 2, Leaf (3))
let tree4 = Node (Empty, 7, Leaf (9))
let tree5 = Node (tree3, 6, tree4)

(* 目的: numが二分探索木に含まれるか調べる *)
(* bi_search: tree_t int -> bool *)
let rec bi_search tree num = match tree with
    | Empty -> false
    | Leaf (n) -> (n = num)
    | Node (lt, n, rt) ->
        if n = num
        then true
        else if num < n
            then bi_search lt num
            else bi_search rt num



let test1 = bi_search tree1 3 = false
let test2 = bi_search tree2 3 = true
let test3 = bi_search tree2 4 = false
let test4 = bi_search tree5 6 = true
let test5 = bi_search tree5 2 = true
let test6 = bi_search tree5 1 = true
let test7 = bi_search tree5 4 = false
let test8 = bi_search tree5 7 = true
let test9 = bi_search tree5 8 = false
