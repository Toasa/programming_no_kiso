(* 目的: int型のリストを受け取り、最小値を返す *)
(* get_min: int list -> int *)
let rec get_min l = match l with
    | [] -> max_int
    | first :: rest ->
        let min_tmp = get_min rest in
        if first < min_tmp
        then first
        else min_tmp

(* 目的: int型のリストを受け取り、最小値とそれ以外からなるリストの組を返す *)
(* split_min: int list -> int *)
let rec split_min l = match l with
    | [] -> (max_int, [])
    | first :: rest ->
        let (tmp_min, tmp_res) = split_min rest in
        if first < tmp_min
        then (first, rest)
        else (tmp_min, first :: tmp_res)


let l = [10; 9; 2; 5; 4; -3; 12]
let test = split_min l
