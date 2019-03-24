type person_t = {
    name: string;
    height: int;
    weight: int;
    birthday: int * int;
    blood: string;
}

let toasa = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "O"}

(* 目的: person_t型のデータを受け取り、「OOさんの血液型はXXです」という文字列を返す *)
(* ketsueki_hyouji: person_t -> string *)
let ketsueki_hyouji person = match person with
    {name = n; height = h; weight = w; birthday = (m, d); blood = b} ->
        n ^ "さんの血液型は" ^ b ^ "型です"

let str1 = ketsueki_hyouji toasa
