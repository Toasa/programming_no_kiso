type person_t = {
    name: string;
    height: int;
    weight: int;
    birthday: int * int;
    blood: string;
}

let toasa = {height = 175; weight=75; birthday = (1, 27); name = "toasa"; blood = "O"}
let kot = {height = 170; weight=75; birthday = (9, 6); name = "kot"; blood = "A"}
let tak = {height = 169; weight=60; birthday = (8, 30); name = "tak"; blood = "B"}
let aki = {height = 151; weight=44; birthday = (7, 7); name = "aki"; blood = "A"}


(* 目的: person_t型のデータのリストを受け取り、乙女座の人の名前のみからなリストを返す *)
(* otomeza: person_t list -> string list *)
let rec otomeza l = match l with
    | [] -> []
    | {height = h; weight = w; birthday = bd; name = n; blood = b} :: rest
         -> match bd with
            | (month, day)
                -> if (month = 8 && 23 <= day && day <= 31)
                        then n :: otomeza rest
                        else if (month = 9 && 1 <= day && day <= 22)
                                then n :: otomeza rest
                                else otomeza rest

let list1 = [toasa; kot]
let list2 = [toasa; kot; tak; aki]
let list3 = [tak]
let list4 = []

let test1 = otomeza list1
let test2 = otomeza list2
let test3 = otomeza list3
let test4 = otomeza list4
