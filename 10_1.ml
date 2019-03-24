(* 目的: 予め昇順に並んでいる整数のリスト l と整数 n を受け取り、昇順を保つようにnをlに挿入したときのリストを返す *)
(* insert: int list -> int -> int list *)
let rec insert l n = match l with
    | [] -> n :: []
    | first :: rest -> if n <= first
                        then n :: l
                        else first :: (insert rest n)

let test1 = insert [1; 3; 5; 8;] 7 = [1; 3; 5; 7; 8]
let test2 = insert [1; 3; 5; 8;] 0 = [0; 1; 3; 5; 8]
let test3 = insert [1; 3; 5; 8;] 10 = [1; 3; 5; 8; 10]
