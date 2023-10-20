let reverse4 (a, b, c, d) = (d, c, b, a);;
reverse4(1, 2, 3, 4);;
reverse4("a", "b", "c", "d");;

let rec sumProd s e =
  if (s >= e) then (0, 1)
  else
    let (sum, prod) = sumProd (s + 1) e in
    (s + sum, s * prod);;

sumProd 3 6;;
(*SumProd 7 6;;
 SumProd 3 3;;*)
sumProd ~-3 5;;

let isPerfect n = 
  if n == 0 then false
  else
    let rec sumAndDiv i sum = 
      if i >= n then sum 
      else 
      if n mod i = 0 then sumAndDiv (i + 1) (sum + i)
      else 
        sumAndDiv (i + 1) sum
    in
    sumAndDiv 1 0 = n;;

isPerfect 6;;
isPerfect ~-3;;
isPerfect 33;;
isPerfect 0;;

let rec insert list elem pos =
  if pos < 0 then elem :: list
  else match list with
    | [] -> [elem]
    | hd :: tl -> if pos = 0 then elem :: hd :: tl else hd :: insert tl elem (pos - 1);;
  
insert ["a"; "a"; "a"; "a"] "b" ~-3;;
insert ["a"; "a"; "a"; "a"] "b" 10;;
insert ["a"; "a"; "a"; "a"] "b" 0;;
insert ["a"; "a"; "a"; "a"] "b" 3;;
insert ["a"; "a"; "a"; "a"] "b" 2;;