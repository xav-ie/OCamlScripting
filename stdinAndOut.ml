let s = "yeehaw\n";;
output_string stdout s;;

let rec readLine (i:int) (lim:int) :int =  
        let input = read_line() in
        let _ = output_string stdout (string_of_int (i) ^ ") " ^ input ^ "\n") in
        if (i<lim) then
                readLine (i+1) lim 
        else 1;;


readLine 0 5;;
