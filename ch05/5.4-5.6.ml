(* 目的: 2次方程式の係数 a, b, cを与えると、判別式の値を返す関数 *)
(* hanbetsusiki: float -> float -> float -> float *)
let hanbetsusiki a b c = b *. b +. (-4. *. a *. c)


(* 目的: 2次方程式の係数 a, b, cを与えると,解の個数を返す *)
(* kai_no_kosuu: float -> float -> float -> int *)
let kai_no_kosuu a b c =
    if (hanbetsusiki a b c > 0.)
        then 2
    else if (hanbetsusiki a b c = 0.)
        then 1
    else 0

(* 目的: 2次方程式の係数 a, b, cを与えると,虚数解を持つか判定する *)
(* kyosukai: float -> float -> float -> bool *)
let kyosukai a b c =
    if (kai_no_kosuu a b c > 0)
        then false
    else
        true


(* test *)
let test1 = hanbetsusiki 4. 2. 3. = -44.

let test2 = kai_no_kosuu 4. 2. 3. = 0
let test3 = kai_no_kosuu 1. 8. 4. = 2
let test3 = kai_no_kosuu 3. 6. 3. = 1

let test4 = kyosukai 4. 2. 3. = true
let test5 = kyosukai 1. 8. 3. = false
