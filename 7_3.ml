(* 目的: x座標とy座標の組pairを受け取り、x軸に対称な点の組を返す *)
(* taisho_x: float * float -> float * float *)
let taisho_x pair = match pair with
    (a, b) -> (a, -.b)

(* test *)
let test1 = taisho_x (20., 10.) = (20., -.10.)
