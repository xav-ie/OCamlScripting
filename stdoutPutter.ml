let s = "yeehaw";;
output_string stdout s;;

let rec readLine i =  
        let _ = output_string stdout (string_of_int (i) ^ "\n") in
        readLine (i+1);;
  
readLine 0;;
