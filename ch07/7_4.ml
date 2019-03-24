(* 目的: x座標とy座標の2つの組, pair1, pair2を受け取り、中点の座標を返す *)
(* chuten: float * float -> float * float *)
let chuten p1 p2 = match p1 with
    (x1, y1) -> (match p2 with
        (x2, y2) -> ((x1 +. x2) /. 2., (y1 +. y2) /. 2.))

(* test *)
let test1 = chuten (20., 10.) (10., 0.) = (15., 5.)
let test2 = chuten (-20., 10.) (10., -10.) = (-5., 0.)
