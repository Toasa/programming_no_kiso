(* 目的: 整数のリストを受け取り、それまでの数の合計からなるリストを返す *)
(* sum_list: int list -> int list *)
let sum_list l =
    let rec accum l total =
        match l with
        | [] -> []
        | first :: rest -> (first + total) :: (accum rest (first + total))
    in accum l 0

let test1 = sum_list [3; 8; 4] = [3; 11; 15]
let test2 = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]
