type 'a ntree = NNil | NNode of 'a * 'a ntree list;;

let a = NNode(1, [NNode(2, []); NNode(3,[NNode(5, [])]); NNode(4, [])]);;

let rec ncons t l =
  if t = NNil then l
  else t::l 
;;

let rec nTreeToList t = match t with
  | NNil -> [] 
  | NNode (x, cs) -> x::(lTreeToList cs) (*cs is a ntree list*)
and lTreeToList tl = match tl with
    | [] -> []
    | t::ts -> (lTreeToList ts)@(nTreeToList t)
;; 

let rec nfall t = match t with
  | NNil -> NNil
  | NNode(x, []) -> NNil
  | NNode(x, cs) -> NNode(x, lnfall cs)
and lnfall tl = match tl with
    |[] -> []
    |t::ts ->  ncons (nfall t) (lnfall ts)
;; 

