type ekimei_t = {
    kanji: string;
    kana: string;
    romaji: string;
    shozoku: string;
}

(* 目的: ekimei_t型のデータを受け取り、「路線名、駅名（かな）」という文字列を返す *)
(* hyouji: ekimei_t -> string *)
let hyouji eki = match eki with
    {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku}
        -> shozoku ^ "、" ^ kanji ^ "（" ^ kana ^ "）"

let test1 = hyouji {kanji = "久留米"; kana = "くるめ"; romaji = "Kurume"; shozoku = "鹿児島本線"}
            = "鹿児島本線、久留米（くるめ）"
let test2 = hyouji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji="Myogadani"; shozoku="丸ノ内線"}
            = "丸ノ内線、茗荷谷（みょうがだに）"
