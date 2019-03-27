(* 'a -> 'a型 *)
let f x = x

(* 'a -> 'b -> 'a型 *)
let f x y = x

(* 'a -> 'b -> 'b型 *)
let f x y = y

(* 'a -> ('a -> 'b) -> 'b型 *)
let f n g =
    let m = g n in
    m

(* ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c型 *)
let f g h n = h (g n)
