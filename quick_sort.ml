(* 目的: 受け取ったint型のリストをクイックソートにより、昇順にソートする *)
(* quick_sort: int list -> int list *)

(* ボツ *)
let rec quick_sort l = match l with
    | [] -> []
    | first :: rest
        -> let prev = List.filter (fun x -> x < first) rest in
           let next = List.filter (fun x -> first < x) rest in
           (quick_sort prev) @ [first] @ (quick_sort next)


(* 目的: int型のリスト l の中から n より小さい要素のみを取り出す *)
(* take_less: int -> int list -> int list *)
let take_less n l = List.filter (fun m -> m < n) l

(* 目的: int型のリスト l の中から n より大きい要素のみを取り出す *)
(* take_greater: int -> int list -> int list *)
let take_greater n l = List.filter (fun m -> m > n) l


(* let rec quick_sort l = match l with
    | [] -> []
    | first :: rest -> quick_sort (take_less first rest)
                       @ [first]
                       @ quick_sort (take_greater first rest) *)


let test1 = quick_sort [] = []
let test2 = quick_sort [1] = [1]
let test3 = quick_sort [1; 2] = [1; 2]
let test4 = quick_sort [2; 1] = [1; 2]
let test5 = quick_sort [5; 4; 9; 8; 2; 3] = [2; 3; 4; 5; 8; 9]
