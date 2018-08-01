
let list =  [1;2;9;4;6]

let print_list f lst =
  let rec print_elements = function
    | [] -> ()
    | h::[] -> f h
    | h::t -> f h; print_string ","; print_elements t
  in
  print_string "[";
  print_elements lst;
  print_string "]\n";;



let rec quicksort gt = function
  | [] -> []
  | x::xs ->
      let ys, zs = List.partition (gt x) xs in
      (quicksort gt ys) @ (x :: (quicksort gt zs))

let _ = 
    print_list print_int 
               (quicksort (>) list)
