type person_t = {
    name: string;
    height: int;
    weight: int;
    birthday: int * int;
    blood: string;
}

let toasa = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "O"}
let kot = {height = 170; weight=75; birthday = (2, 22); name = "kot"; blood = "A"}
let tak = {height = 169; weight=60; birthday = (2, 22); name = "tak"; blood = "B"}
let aki = {height = 151; weight=44; birthday = (7, 7); name = "aki"; blood = "A"}


(* 目的: person_t型のデータのリストを受け取り、血液型がA型の人の数を返す *)
(* count_A: person_t list -> int *)
let rec count_A l = match l with
    | [] -> 0
    | {height = h; weight = w; birthday = bd; name = n; blood = b} :: rest
        -> if b = "A" then 1 + count_A rest
                      else count_A rest

let list1 = [toasa; kot]
let list2 = [toasa; kot; tak; aki]
let list3 = [tak]
let list4 = []

let test1 = count_A list1 = 1
let test2 = count_A list2 = 2
let test3 = count_A list3 = 0
let test4 = count_A list4 = 0
