let min a b = if a < b then a else b;;

let rec fibonacci x = if x < 2 then x 
else  fibonacci ( x-1 ) + fibonacci (x-2);;

let rec pow (b,e) = if e = 0 then 1 
else if e = 1 then b else pow (b, e-1) + b;;

min 3 2;;
min 2 2;;
min 1 3;;
fibonacci 3;;
fibonacci 1;;
pow (2, 2);;
pow (5, 0);;
pow (5, 5);;
