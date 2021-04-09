(*Module body for BinTree*)

type tree = Nil | Node of int*tree*tree;;

let rec make l = match l with
  | [] -> Nil
  | x::xs -> Node(x, Nil, (make xs))
;;

let rec max t = match t with
  | Nil -> 0
  | Node(x, l, r) -> 1
;;

let load fin t = Nil
;;

let store fout t = 0
;;

let show t = 0
;;


