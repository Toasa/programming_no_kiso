(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae : string;       (* 名前 *)
  tensuu : int;         (* 点数 *)
  seiseki : string;     (* 成績 *)
}

(* gakusei_t list 型のデータの例 *)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]
let lst4 = [{namae = "yoshida"; tensuu = 80; seiseki = "A"};
            {namae = "asai"; tensuu = 70; seiseki = "B"};
            {namae = "kaneko"; tensuu = 85; seiseki = "A"}]


let is_sekiseki s =
    let is_sekiseki_s gaku = (gaku.seiseki = s)
    in is_sekiseki_s

(* 目的: 学生リスト l のうち成績が s の人の数を返す *)
(* count: gakusei_t -> string -> int *)
let count l s = List.length (List.filter (is_sekiseki s) l)


let test1 = count lst4 "A" = 2
let test2 = count lst4 "B" = 1
let test3 = count lst4 "C" = 0
