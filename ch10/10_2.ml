(* 目的: 予め昇順に並んでいる整数のリスト l と整数 n を受け取り、昇順を保つようにnをlに挿入したときのリストを返す *)
(* insert: int list -> int -> int list *)
let rec insert l n = match l with
    | [] -> n :: []
    | first :: rest -> if n <= first
                        then n :: l
                        else first :: (insert rest n)


(* 目的: 整数のリストを受け取り、昇順にソートされたリストを返す *)
(* ins_sort: int list -> int list *)
let rec ins_sort l = match l with
| [] -> []
| first :: rest -> insert (ins_sort rest) first

let test1 = ins_sort [1; 3; 5; 8] = [1; 3; 5; 8]
let test2 = ins_sort [3; 5; 8; 1] = [1; 3; 5; 8]
let test3 = ins_sort [8; 5; 3; 1] = [1; 3; 5; 8]
