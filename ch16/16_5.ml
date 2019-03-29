#use "ch10/10_10.ml"
#use "ch16/16_4.ml"


(* 目的：ekimei list から eki list を作る *)
(* make_initial_eki_list : ekimei_t list -> string -> eki_t list *)
let make_initial_eki_list ekimei_list kiten =
  List.map (fun ekimei -> match ekimei with
	     {kanji = k; kana = a; romaji = r; shozoku = s} ->
	       if k = kiten
	       then {name = k; min_dis = 0.; temae_list = [k]}
	       else {name = k; min_dis = infinity; temae_list = []})
	   ekimei_list


(* 目的：受け取った eki_t型のリスト から shuten のレコードを探し出す *)
(* find : string -> eki_t list -> eki_t *)
let rec find shuten_kanji l = match l with
    | [] -> {name=""; min_dis=0.; temae_list=[]}
    | first :: rest ->
        if (first.name = shuten_kanji)
        then first
        else find shuten_kanji rest


(* 目的: 始点の駅名（ローマ字の文字列）と終点の駅名（ローマ字の文字列）を受け取り、ダイクストラ法を施し、
終点の駅のレコードを返す *)
(* dijkstra: string -> string -> eki_t *)
let dijkstra shiten shuten =
    let shiten_kanji = romaji_to_kanji shiten global_ekimei_list in
    let shuten_kanji = romaji_to_kanji shuten global_ekimei_list in
    let eki_t_list = make_initial_eki_list global_ekimei_list shiten_kanji in
    let modified_eki_l = dijkstra_main eki_t_list global_ekikan_list in
    find shuten_kanji modified_eki_l

let test1 = dijkstra "shibuya" "gokokuji" =
    {name = "護国寺"; min_dis = 9.8;temae_list =
    ["護国寺"; "江戸川橋"; "飯田橋"; "市ヶ谷"; "麹町"; "永田町"; "青山一丁目"; "表参道"; "渋谷"]}

let test2 = dijkstra "myogadani" "meguro" =
  {name = "目黒"; min_dis = 12.7000000000000028;
   temae_list =
     ["目黒"; "白金台"; "白金高輪"; "麻布十番"; "六本木一丁目"; "溜池山王";
      "永田町"; "麹町"; "市ヶ谷"; "飯田橋"; "後楽園"; "茗荷谷"]}
