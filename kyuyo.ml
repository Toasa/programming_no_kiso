let jikyu = 950
let yugu_jikyu = 980
let kihonkyu = 100

(* 目的: 働いた時間xに応じてアルバイト代を計算する *)
(* kyuyo: int -> int *)
let kyuyo hour = kihonkyu + hour * (
        if hour >= 30 then yugu_jikyu else jikyu
    )
    (* if hour >= 30 then hour * yugu_jikyu + kihonkyu
                  else hour * jikyu + kihonkyu *)

let test1 = kyuyo 25 = 23850
let test2 = kyuyo 28 = 26700
let test3 = kyuyo 31 = 30480
