(* faq: int -> int *)
let rec faq x =
    if x = 0 then 1
    else x * (faq (x - 1))
