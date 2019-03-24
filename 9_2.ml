type person_t = {
    name: string;
    height: int;
    weight: int;
    birthday: int * int;
    blood: string;
}

let toasa = {height = 175; weight = 75; birthday = (1, 27); name = "toasa"; blood = "O"}
let kot = {height = 170; weight = 70; birthday = (1, 1); name = "kot"; blood = "A"}
let gronk = {height = 200; weight = 110; birthday = (2, 22); name = "Gronk"; blood = "B"}

let persons =  toasa :: kot :: gronk :: []
