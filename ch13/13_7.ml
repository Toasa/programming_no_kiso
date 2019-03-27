#use "./ch10/10_11.ml"
#use "./ch12/12_1.ml"
#use "./ch13/13_6.ml"

(* 目的: 直前に確定した駅 p (eki_t型)と未確定の駅のリスト v (eki_t list)を受け取り、
必要な更新処理を行い、未確定の駅のリストを返す *)
(* koushin: eki_t -> eki_t list -> eki_t list *)
let rec koushin p v =
    let f q = koushin1 p q in
    List.map f v

(* 駅の例 *)
let eki1 = {name="池袋"; min_dis = infinity; temae_list = []}
let eki2 = {name="新大塚"; min_dis = 1.2; temae_list = ["新大塚"; "茗荷谷"]}
let eki3 = {name="茗荷谷"; min_dis = 0.; temae_list = ["茗荷谷"]}
let eki4 = {name="後楽園"; min_dis = infinity; temae_list = []}

(* 駅リストの例 *)
let lst = [eki1; eki2; eki3; eki4]

(* テスト *)
let test1 = koushin eki2 [] = []
let test2 = koushin eki2 lst =
 [{name="池袋"; min_dis = 3.0; temae_list = ["池袋"; "新大塚"; "茗荷谷"]};
  eki2; eki3; eki4]
