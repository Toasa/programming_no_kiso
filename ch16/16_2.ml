(* 目的: 関数 f と初期値 init, そしてリスト l を受け取り, initからはじめてリストlの要素を
左から順にfに作用させる関数 *)
(* fold_left: ('a -> 'a -> 'b) -> 'a -> 'a list -> 'b *)
let fold_left f init l = match l with
    | [] ->
    | first :: rest ->
        fold_left f (f init first) rest

let fold_left f init l =
    let rec accum f init l result = match l with
        | [] -> result
        | first :: rest ->
            let result = f init first in
            accum f init rest result
    in accum f init l 0
