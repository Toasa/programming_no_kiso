(* pow: int -> int *)
let rec pow a n =
    if n = 0 then 1
    else a * (pow a (n - 1))

let test = pow 4 3
let test = pow 2 10
