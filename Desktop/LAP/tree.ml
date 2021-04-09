type 'a tree = Null | Node of 'a * 'a tree * 'a tree;;

let a = Node (1, Node (2, Null, Null), Node (3, Node (4, Null, Null), Node (5,Null,Null)));;

let b = Node (1, Null, Node(2, Null, Node(5, Null, Null)));;

let makeLeaf v = Node (v, Null, Null) ;;

let rec addNode x t = match t with
  | Null -> makeLeaf x
  | Node(v,l,r) -> if x > v then addNode x r else if x < v then addNode x l else makeLeaf x 
;;

(* Possible to improve time complex if the tree is "true" binary*)
let rec existNode x t = match t with
  | Null -> false
  | Node(v,l,r) -> if v = x then true else existNode x l || existNode x r
;;

let rec height t = match t with
  | Null -> 0
  | Node(_,l,r) -> 1 + max (height l) (height r)
;;

let rec isBalanced t = match t with
  | Null -> true 
  | Node (_,l,r) -> if height l - height r > 1 || height l - height r < -1 then false 
                    else isBalanced l && isBalanced r 
;; 

let rec sum t = match t with
  | Null -> 0
  | Node (v,l,r) -> v + sum l + sum r 
;;

let rec howMany v t = match t with
  | Null -> 0
  | Node (x, l, r) -> if x = v then 1 + (howMany v l) + (howMany v r) else (howMany v l) + (howMany v r)
;;

let rec eqPairs t = match t with
  | Null -> 0
  | Node ((x,y),l,r) -> if x = y then 1 + eqPairs l + eqPairs r else eqPairs l + eqPairs r
;;

let rec treeToList t = match t with
  | Null -> [] 
  | Node (x, l, r) ->  x::(treeToList l)@(treeToList r) (*instead of @ using a append funtion*)
;;

let rec fall t = match t with
  | Null -> Null
  | Node (x, l, r) -> if l = Null && r = Null then Null else Node (x, fall l, fall r) 
;;

