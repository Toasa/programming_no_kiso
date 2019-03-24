type gakusei_t = {
    name: string;
    point: int;
    seiseki: string;
}

let stu1 = {name = "toa"; point = 30; seiseki = "A"}
let stu2 = {name = "kot"; point = 40; seiseki = "S"}
let stu3 = {name = "xxx"; point = 20; seiseki = "B"}

(* 目的: 予め昇順に並んでいるgakusei_t型のリスト l と学生のデータ stu を受け取り、pointフィールドを昇順を保つようにstuをlに挿入したときのリストを返す *)
(* insert: gakusei_t list -> gakusei_t -> gakusei_t list *)
let rec insert l stu = match l with
    | [] -> stu :: []
    | first :: rest -> match first with
        {name = nf; point = pf; seiseki = sf} -> match stu with
            {name = n; point = p; seiseki = s} ->
                if p <= pf
                    then stu :: l
                    else first :: (insert rest stu)

(* 目的: gakusei_t型のリストを受け取り、それをpointフィールドの順にsortしたリストを返す *)
(* gakusei_sort: gakusei_t list -> gakusei_t list *)
let rec gakusei_sort l = match l with
| [] -> []
| first :: rest -> insert (gakusei_sort rest) first

let test1 = gakusei_sort [stu1; stu2; stu3] = [stu3; stu1; stu2]
let test2 = gakusei_sort [stu1; stu3; stu2] = [stu3; stu1; stu2]
