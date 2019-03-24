(* 時間を受け取り、午前か午後を返す関数 *)
(* jikan: int -> string *)
let jikan x = if x >= 12 then "gogo" else "gozen"

let test1 = jikan 13 = "gogo"
let test2 = jikan 10 = "gozen"
