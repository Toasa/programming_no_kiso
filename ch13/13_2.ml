type person_t = {
    name: string;
    height: int;
    weight: int;
    birthday: int * int;
    blood: string;
}

let t1 = {height = 175; weight=75; birthday = (1, 27); name = "t1"; blood = "O"}
let t2 = {height = 175; weight=75; birthday = (1, 27); name = "t2"; blood = "A"}
let t3 = {height = 175; weight=75; birthday = (1, 27); name = "t3"; blood = "B"}
let t4 = {height = 175; weight=75; birthday = (1, 27); name = "t4"; blood = "O"}

(* 目的: person_t型のデータを受け取り、名前を返す *)
(* get_name: person_t -> string *)
let get_name p = match p with
    {name = n} -> n

(* 目的: person_t型のリストを受け取り、その中に登場する人の名前のリストを返す *)
(* person_name: person_t list -> string list *)
let person_name l = List.map get_name l

let test = person_name [t1; t2; t3; t4]
