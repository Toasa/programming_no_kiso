#use "./ch09/9_9.ml"

(* 目的: ローマ字の駅名と駅名(ekimei_t)型のリストを受け取り、その駅の漢字表記を返す関数 *)
(* romaji_to_kanji: string -> ekimei_t list -> string *)
let rec romaji_to_kanji ekimei_r ekimei_list = match ekimei_list with
    | [] -> ""
    | first :: rest -> match first with
        {romaji = romaji; kanji = kanji} ->
        if romaji = ekimei_r then kanji
        else romaji_to_kanji ekimei_r rest

let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test2 = romaji_to_kanji "kurume" global_ekimei_list = ""
