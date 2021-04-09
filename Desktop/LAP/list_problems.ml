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

let rec map f l = match l with
	| [] 
	| x::xs -> f x (map f xs)
;;
