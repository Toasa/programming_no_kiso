(* 目的: 関数を２つ受け取り、その２つを合成した関数を返す *)
(* compose:  *)
let compose f g n = f (g n)

let mul2 n = n * 2
let add3 n = n + 3

let test = compose mul2 add3 10 = 26
