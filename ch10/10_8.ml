type person_t = {
    name: string;
    height: int;
    weight: int;
    birthday: int * int;
    blood: string;
}

let toasa = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "O"}
let t = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "B"}
let t1 = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "AB"}
let t2 = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "O"}

(* 目的: person_t型のデータのリストを受け取り、各血液型が何人いるか組にして返す *)
(* 戻り値(A, B, O, AB) *)
(* ketsueki_shukei: person_t list -> int * int * int * int *)
let rec ketsueki_shukei l = match l with
    | [] -> (0, 0, 0, 0)
    | {blood = bl} :: rest ->
        let (a, b, o, ab) = ketsueki_shukei rest in
        if bl = "A" then (a + 1, b, o, ab)
        else if bl = "B" then (a, b + 1, o, ab)
        else if bl = "O" then (a, b, o + 1, ab)
        else (a, b, o, ab + 1)

(* 目的: ４つのint型のデータの組(a, b, c, d)を受け取り、一番大きいデータのインデックスを返す *)
(* get_max_index: int * int * int * int -> int *)
let get_max_index pair = match pair with
    | (a, b, c, d) ->
        if (a >= b && a >= c && a >= d) then 0
        else if (b >= a && b >= c && b >= d) then 1
        else if (c >= a && c >= b && c >= d) then 2
        else 3

(* 目的: person_t型のデータのリストを受け取り、各血液型のうち最も人数の多い血液型を返す *)
(* saita_ketsueki: person_t list -> string *)
let saita_ketsueki l =
    let blood_pair = ketsueki_shukei l in
    let max_index = get_max_index blood_pair in
    if max_index = 0 then "A"
    else if max_index = 1 then "B"
    else if max_index = 2 then "O"
    else "AB"

let test1 = saita_ketsueki [toasa; t; t1; t2] = "O"
