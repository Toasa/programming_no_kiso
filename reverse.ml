(* 目的: 与えられたリストを逆順にして返す *)
(* reverse: 'a list -> 'a list *)
let rec reverse l = match l with
    | [] -> []
    | first :: rest -> (reverse rest) @ [first]


(* もう一つ(教科書ver) *)
let reverse l =
    let rec accum l result = match l with
        | [] -> result
        | first :: rest -> accum rest (first :: result)
    in accum l []
