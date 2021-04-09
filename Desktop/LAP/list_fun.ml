(*Some funtions that messes with list*)

let rec len l = match l with
[] -> 0 | _::xs -> 1 + len xs
;;

let rec sum_l l = match l with
[] -> 0 | x::xs -> x + sum_l xs
;;

let rec append l1 l2 = match l1 with
	| [] -> l2
	| x::xs -> x::append xs l2
;;
	
let rec putAtEnd x l = match l with
	| [] -> [x]
	| y::ys ->  y::putAtEnd x ys
;;

let rec invert l = match l with
	| [] -> []
	| x::xs -> (invert xs) @ [x]
;;

let rec maxList l = match l with 
	| [] -> failwith "maxList: empty list"
	| [x] -> x
	| x::xs -> max x (maxList xs)
;;

let rec flatmap f l = match l with
	| [] -> []
	| x::xs -> (f x) @ flatmap f xs
;;

let rec map f l = match l with
	| [] -> []
	| x::xs -> (f x)::map f xs
;;

let rec belongs v l = match l with
	| [] -> false
	| y::ys -> if v = y then true else belongs v ys
;;

let rec union l1 l2 = match l1 with
	| [] -> l2
	| x::xs -> if belongs x l2 then union xs l2  
			else x::union xs l2
;;

let rec inter l1 l2 = match l1 with
	| [] -> []
	| x::xs -> if belongs x l2 then x::inter xs l2 
	else inter xs l2
;; 

(*let rec diff o e = match o with
	| [] -> []
	| x::xs -> if belongs x e then diff xs l2 else x::diff xs l2
;;*)

let rec addHead v l = match l with
	| [] -> []
	| x::xs -> (v::x):: addHead v xs
;;

let rec power l = match l with
	| [] -> [[]]
	| x::xs -> addHead x (power xs) @ power xs
;;

let rec nat n = match n with
	| 0 -> []
	| x -> (x-1)::nat (x-1)
;;

let rec extractFromPair (x,n) = match n with
	| 0 -> []
	| num -> x::extractFromPair (x,n-1)
;;

let rec unpack pair = match pair with
	| [] -> [] 
	| (xV,yN)::xs -> extractFromPair (xV, yN) @ unpack xs
;;

let unpack2 pair = flatmap extractFromPair pair ;; 


