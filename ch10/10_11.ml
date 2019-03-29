#use "./ch09/9_10.ml"

(* 目的: 漢字の駅名を２つ、駅間リストを１つ受け取り、リストの中から、２駅間の距離を返す関数 *)
(* get_ekikan_kyori: string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori eki1 eki2 l = match l with
    | [] -> infinity
    | first :: rest -> match first with
        {kiten = ki; shuten = sh; kyori = k} ->
        if (eki1 = ki && eki2 = sh) || (eki1 = sh && eki2 = ki)
        then k
        else get_ekikan_kyori eki1 eki2 rest

let test1 = get_ekikan_kyori "代々木公園" "明治神宮前" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "清澄白河" "住吉" global_ekikan_list = 1.9
let test3 = get_ekikan_kyori "久留米" "熊本" global_ekikan_list = infinity
