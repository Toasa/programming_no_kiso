(* 目的: 2以上n以下の自然数のリストを受け取り、2以上n以下の素数のリストを返す関数 *)
(* sieve: int list -> int list *)
let rec sieve l = match l with
    | [] -> []
    | first :: rest -> first :: (List.filter (fun x -> x mod first <> 0) rest)

(* 目的: 2からnまでのリストを返す *)
(* enumerate: int -> int list *)
let rec enumerate n =
    if n > 2
    then enumerate (n - 1) @ [n]
    else [] @ [n]

(* 目的: 自然数 n を受け取り、それ以下の素数のリストを返す *)
(* prime: int -> int list *)
let prime n =
    let l = enumerate n in
    sieve l

let test = prime 20
