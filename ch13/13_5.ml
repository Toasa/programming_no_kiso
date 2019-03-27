(* twice: ('a -> 'a) -> 'a -> 'a *)
let twice f =
    let g x = f (f x) in
    g

(* twicetwice: ('a -> 'a) -> 'a -> 'a *)
let twicetwice f = twice (twice f)

(* mul2: int -> int *)
let mul2 n = 2 * n

let test = (twicetwice mul2) 10 = 160
