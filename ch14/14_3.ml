#use "./fold_right.ml"

(* 目的: 文字列のリストを受け取り、その中の全要素を結合した文字列を生成する *)
(* concat: string list -> string *)
let string_add s1 s2 = s1 ^ s2
let concat str_list = fold_right string_add str_list ""

(* test *)
let test1 = concat ["無"; "事"; "是"; "名"; "馬"] = "無事是名馬"
