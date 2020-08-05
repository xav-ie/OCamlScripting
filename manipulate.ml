let s = "yeehaw\n";;
output_string stdout s;;

let rec readLine (i:int) (lim:int) :int =  
        let input = read_line() in
        let output =  
                (match input with
                | ""  -> 0
                | _ -> try int_of_string input with _ -> 0
                ) in
        let result  = output * 50 in
        let _ = output_string stdout (string_of_int (i) ^ ") " ^ string_of_int result ^ "\n") in
        if (i<lim) then
                readLine (i+1) lim 
        else 1;;


readLine 0 5;;
