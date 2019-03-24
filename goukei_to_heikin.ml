(* 目的: 五教科の点数を受け取ると、合計と平均の組を返す *)
(* goukei_to_heikin: int -> int -> int -> int -> int -> int -> float *)

let goukei_to_heikin jap sci eng soc sci =
    (jap + sci + eng + soc + sci, (float_of_int(jap + sci + eng + soc + sci) /. 5.))

let x = goukei_to_heikin 34 50 90 70 43
