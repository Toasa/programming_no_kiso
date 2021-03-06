#use "./ch12/12_1.ml"

(* 目的: eki_t型のリストを受け取り、「最短距離最小の駅」と「最短距離最小の駅以外からなるリスト」の
組を返す *)
(* saitan_wo_bunri: eki_t list -> (eki_t * eki_t list) *)
let rec saitan_wo_bunri l = match l with
    | [] -> ({name=""; min_dis=infinity; temae_list=[]}, [])
    | first :: rest ->
        let (tmp_eki, tmp_res) = saitan_wo_bunri rest in
        if first.min_dis < tmp_eki.min_dis
        then (first, rest)
        else (tmp_eki, first :: tmp_res)

(* 駅の例 *)
let eki1 = {name="池袋"; min_dis = infinity; temae_list = []}
let eki2 = {name="新大塚"; min_dis = 1.2; temae_list = ["新大塚"; "茗荷谷"]}
let eki3 = {name="茗荷谷"; min_dis = 0.; temae_list = ["茗荷谷"]}
let eki4 = {name="後楽園"; min_dis = infinity; temae_list = []}

(* 駅リストの例 *)
let lst = [eki1; eki2; eki3; eki4]

(* テスト *)
let test = saitan_wo_bunri lst = (eki3, [eki1; eki2; eki4])
