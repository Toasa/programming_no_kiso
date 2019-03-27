type person_t = {
    name: string;
    height: int;
    weight: int;
    birthday: int * int;
    blood: string;
}

let t1 = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "O"}
let t2 = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "A"}
let t3 = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "B"}
let t4 = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "O"}

(* 目的: person_t型のリストと指定する血液型の文字列を受け取り、リスト内のその血液型に該当する人数を返す *)
(* count_ketsueki: person_t list -> int *)
let rec count_ketsueki l b_str = match l with
    | [] -> 0
    | {blood = b} :: rest ->
        if b = b_str
        then 1 + count_ketsueki rest b_str
        else count_ketsueki rest b_str

let test = count_ketsueki [t1; t2; t3; t4] "O" = 2
let test = count_ketsueki [t1; t2; t3; t4] "A" = 1
let test = count_ketsueki [t1; t2; t3; t4] "AB" = 0
