type ekikan_t = {
    (* 起点の駅名 *)
    kiten: string;
    (* 終点の駅名 *)
    shuten: string;
    (* 経由する路線名 *)
    keiyu: string;
    (* 2駅間の距離 *)
    kyori: float;
    (* 所要時間 *)
    jikan: int;
}
