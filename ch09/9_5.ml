(* 目的: リストを受け取り、その中の偶数を要素に持つリストを返す *)
(* even: int list -> int list *)
let rec even l = match l with
    | [] -> []
    | first :: rest -> if (first mod 2 = 0)
                          then first :: even rest
                          else even rest
(* test *)
let test1 = even [1] = []
let test2 = even [1; 2; 3; 4; 5] = [2; 4]
let test3 = even [0; 20; 0] = [0; 20; 0]
let test4 = even [2; 1; 6; 4; 7] = [2; 6; 4]
