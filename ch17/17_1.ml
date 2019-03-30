type nengou_t =
    | Meiji of int
    | Taisho of int
    | Showa of int
    | Heisei of int

(* 目的: nengou_t型のデータを受け取り、int型の西暦にして返す *)
(* wareki_to_seireki: nengou_t -> int *)
let wareki_to_seireki y = match y with
    | Meiji (n) -> n + 1867
    | Taisho (n) -> n + 1911
    | Showa (n) -> n + 1925
    | Heisei (n) -> n + 1988

(* 目的: 誕生年と現在の年をnengou_t型の値として受け取り、年齢を返す *)
(* nenrei: nengou_t -> nengou_t -> int *)
let nenrei bd cur =
    (wareki_to_seireki cur) - (wareki_to_seireki bd)

let cur = Heisei (31)
let bd = Heisei (4)

let test = nenrei bd cur
