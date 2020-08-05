let s = "yeehaw\n";;
output_string stdout s;;

let sockMerchant (n:int) (l:int list) :int =
        4;;


let rec readLine (i:int) (lim:int) :int =  
        let numSocks = int_of_string (read_line()) in
        let sockList = List.map (int_of_string) (String.split_on_char ' ' (read_line())) in
        let result  =  sockMerchant numSocks sockList in
        let _ = output_string stdout (string_of_int (i) ^ ") " ^ string_of_int result ^ "\n") in
        if (i<lim) then
                readLine (i+1) lim 
        else 1;;


readLine 0 5;;
