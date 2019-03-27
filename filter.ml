(* 目的: リストlのうち、条件condを満たすもののみで構成された部分リストを返す *)
(* filter: a' list -> a' list *)
let rec filter cond l = match l with
    | [] -> []
    | first :: rest ->
        if cond first
        then first :: filter cond rest
        else filter cond rest

let is_mod3_1 n = (n mod 3 = 1)
let is_positive n = n > 0

let list = [-1; 2; -3; 4; -5; 6; -7; 8; -9; 10]

let test0 = filter is_mod3_1 list
let test1 = filter is_positive list
