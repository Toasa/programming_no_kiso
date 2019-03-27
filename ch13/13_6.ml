#use "./ch10/10_11.ml"
#use "./ch12/12_1.ml"

type eki_t = {
    name: string;
    min_dis: float;
    temae_list: string list;
}

(* 目的: 直前に確定した駅p (eki_t型)と未確定の駅q (eki_t型)を受け取り、
pとqが直接つながっているか調べ、つながっていたらqの最短距離と手前リストを必要に応じて更新したもの、
つながっていなかったらもとのqをそのまま返す *)
(* koushin1: eki_t -> eki_t -> eki_t *)
let koushin1 p q =
    let dis = get_ekikan_kyori p.name q.name global_ekikan_list in
    if dis <> infinity
    then
        if p.min_dis +. dis < q.min_dis
        then {name = q.name; min_dis = p.min_dis +. dis; temae_list = q.name :: p.temae_list}
        else q
    else q


let eki1 = {name="池袋"; min_dis = infinity; temae_list = []}
let eki2 = {name="新大塚"; min_dis = 1.2; temae_list = ["新大塚"; "茗荷谷"]}
let eki3 = {name="茗荷谷"; min_dis = 0.; temae_list = ["茗荷谷"]}
let eki4 = {name="後楽園"; min_dis = infinity; temae_list = []}


(* テスト *)
let test1 = koushin1 eki3 eki1 = eki1
let test2 = koushin1 eki3 eki2 = eki2
let test3 = koushin1 eki3 eki3 = eki3
let test4 = koushin1 eki3 eki4 =
	{name="後楽園"; min_dis = 1.8; temae_list = ["後楽園"; "茗荷谷"]}
let test5 = koushin1 eki2 eki1 =
	{name="池袋"; min_dis = 3.0; temae_list = ["池袋"; "新大塚"; "茗荷谷"]}
let test6 = koushin1 eki2 eki2 = eki2
let test7 = koushin1 eki2 eki3 = eki3
let test8 = koushin1 eki2 eki4 = eki4
