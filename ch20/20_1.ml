(* 赤 or 黒を示す型 *)
type color_t = Red | Black

(* 'a型のキーと'b型の値、色を示すcolor_t型の値を持つ *)
type ('a, 'b) rb_tree_t =
    | Empty
    | Node of ('a, 'b) rb_tree_t * 'a * 'b * color_t * ('a, 'b) rb_tree_t
