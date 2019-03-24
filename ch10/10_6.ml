type gakusei_t = {
    name: string;
    point: int;
    seiseki: string;
}

let stu1 = {name = "toa"; point = 30; seiseki = "A"}
let stu2 = {name = "kot"; point = 40; seiseki = "S"}
let stu3 = {name = "xxx"; point = 20; seiseki = "B"}

(* 最高得点を求めるために、最小得点のレコードを用意する *)
let min_stu = {name ="min"; point = min_int; seiseki = "G"}

(* 目的: gakusei_t型のデータを受け取り、そのポイントを返す *)
(* get_point: gakusei_t -> int *)
let get_point stu = match stu with
    {name = n; point = p; seiseki = s} -> p

(* 目的: gakusei_t型のリストを受け取り、最高得点の人のレコードを返す *)
(* gakusei_sort: gakusei_t list -> gakusei_t *)
let rec gakusei_max l = match l with
| [] -> min_stu
| first :: rest ->
    let max_rest = gakusei_max rest in
    if (get_point first) > get_point max_rest
        then first
        else max_rest

let test1 = gakusei_max [stu1; stu2; stu3] = stu2
