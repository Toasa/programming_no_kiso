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

let test1 = ketsueki_shukei [toasa; t; t1; t2] = (0, 1, 2, 1)
let test2 = ketsueki_shukei [t; t1; t2] = (0, 1, 1, 1)
