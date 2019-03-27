(* 目的:  *)
(* fold_right: ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f l init = match l with
    | [] -> init
    | first :: rest -> f first (fold_right f rest init)

let add a b = a + b
let sum l = fold_right add l 0

let add_one first rest = 1 + rest
let length l = fold_right add_one l 0

let append_one n l = n :: l
let append l1 l2 = fold_right append_one l l2

let l = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10]
let l1 = [11; 12; 13; 14; 15; 16; 17; 18; 19; 20]

let test1 = sum l
let test2 = length l
let test3 = append l l1
