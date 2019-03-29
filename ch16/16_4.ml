#use "./ch10/10_11.ml"
#use "./ch15/15_4.ml"


(* 目的: 直前に確定した駅 p (eki_t型)、未確定の駅のリスト v (eki_t list)と
global_ekikan_listを受け取り、必要な更新処理を行い、未確定の駅のリストを返す *)
(* koushin: eki_t -> eki_t list -> ekikan_t list -> eki_t list *)
let rec koushin p v ekikan_t_l =
    let f q =
        (fun p0 q0 ->
            let dis = get_ekikan_kyori p0.name q0.name ekikan_t_l in
            if dis <> infinity
            then
                if p0.min_dis +. dis < q0.min_dis
                then {name = q0.name; min_dis = p0.min_dis +. dis; temae_list = q0.name :: p0.temae_list}
                else q0
            else q0)
        p q in
    List.map f v

(* 目的: eki_t 型の未確定の駅のリストとekikan_t型のリストを受け取り、ダイクストラ法により、
各駅についての最短距離と最短経路が正しく入ったeki_t型のリストを返す *)
(* dijkstra_main eki_t list -> ekikan_t list -> eki_t list *)

(* 自作、うまく行っていない *)
(* let rec dijkstra_main eki_t_l ekikan_t_l =
    if eki_t_l = []
    then []
    else let pair = saitan_wo_bunri eki_t_l in
        match pair with (min_eki, rest_eki_list)
        -> let mikakutei_eki_t_l = koushin min_eki rest_eki_list ekikan_t_l in
        dijkstra_main mikakutei_eki_t_l ekikan_t_l *)

let rec dijkstra_main eki_t_l ekikan_t_l = match eki_t_l with
| [] -> []
| first :: rest ->
    let (min_eki, rest_eki_list) = saitan_wo_bunri (first :: rest) in
    let mikakutei_eki_t_l = koushin min_eki rest_eki_list ekikan_t_l in
    min_eki :: dijkstra_main mikakutei_eki_t_l ekikan_t_l

(* 駅の例 *)
let eki1 = {name="池袋"; min_dis = infinity; temae_list = []}
let eki2 = {name="新大塚"; min_dis = 1.2; temae_list = ["新大塚"; "茗荷谷"]}
let eki3 = {name="茗荷谷"; min_dis = 0.; temae_list = ["茗荷谷"]}
let eki4 = {name="後楽園"; min_dis = infinity; temae_list = []}

(* 駅リストの例 *)
let lst = [eki1; eki2; eki3; eki4]

(* テスト *)
let test1 = dijkstra_main [] global_ekikan_list = []
let test2 = dijkstra_main lst global_ekikan_list =
  [{name = "茗荷谷"; min_dis = 0.; temae_list = ["茗荷谷"]};
   {name = "新大塚"; min_dis = 1.2; temae_list = ["新大塚"; "茗荷谷"]};
   {name = "後楽園"; min_dis = 1.8; temae_list = ["後楽園"; "茗荷谷"]};
   {name = "池袋"; min_dis = 3.; temae_list = ["池袋"; "新大塚"; "茗荷谷"]}]
