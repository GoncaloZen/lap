let rec mdc m n = if n = 0 then m
else mdc n (m mod n) ;;

mdc 3768 1701 ;; 

