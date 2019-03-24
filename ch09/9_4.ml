(* int list は
    - []
    - first :: rest
という形 *)

(* 目的: リストを受け取り、その長さを返す *)
(* length: int list -> int *)
let rec length l = match l with
    | [] -> 0
    | first :: rest -> 1 + length rest

(* test *)
let test1 = length [1] = 1
let test2 = length [1; 2; 3; 4; 5] = 5
let test3 = length [0; 20; 0] = 3
