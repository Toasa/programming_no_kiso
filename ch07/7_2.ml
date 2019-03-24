(* 目的: 名前と成績の組を受け取ると、成績結果を表す文字列を返す *)
(* seiseki: string * int -> string *)

let seiseki pair = match pair with
    
    if num > 70 then name ^ "さんの評価は優です"
                else if 40 < num && num <= 70
                    then name ^ "さんの評価は良です"
                    else name ^ "さんの評価は可です"

let test1 = seiseki ("tanaka1", 80)
let test2 = seiseki ("tanaka2", 50)
let test3 = seiseki ("tanaka3", 40)
