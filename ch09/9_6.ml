(* 目的: 文字列のリストを受け取り、その中の全要素を結合した文字列を生成する *)
(* concat: string list -> string *)
let rec concat str_list = match str_list with
    | [] -> ""
    | first :: rest -> first ^ concat rest

(* test *)
let test1 = concat ["無"; "事"; "是"; "名"; "馬"] = "無事是名馬"
