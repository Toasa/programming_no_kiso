#use "./ch17/17_2.ml"
#use "./ch17/17_3.ml"

(* 目的: year_t型のデータを受け取り、seiza_t型の関数を返す *)
(* zodiac: year_t -> zodiac_t *)
let zodiac y = match y with
    | January (n)   -> if (n <= 19)
                       then Capricorn
                       else Aquarius
    | February (n)  -> if (n <= 18)
                       then Aquarius
                       else Pisces
    | March (n)     -> if (n <= 20)
                       then Pisces
                       else Aries
    | April (n)     -> if (n <= 19)
                       then Aries
                       else Taurus
    | May (n)       -> if (n <= 20)
                       then Taurus
                       else Gemini
    | June (n)      -> if (n <= 21)
                       then Gemini
                       else Cancer
    | July (n)      -> if (n <= 22)
                       then Cancer
                       else Leo
    | August (n)    -> if (n <= 22)
                       then Leo
                       else Virgo
    | September (n) -> if (n <= 22)
                       then Virgo
                       else Libra
    | October (n)   -> if (n <= 23)
                       then Libra
                       else Scorpio
    | November (n)  -> if (n <= 22)
                       then Scorpio
                       else Sagittarius
    | December (n)  -> if (n <= 21)
                       then Sagittarius
                       else Capricorn


let test = zodiac (January (27))
