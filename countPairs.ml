

let rec sockMerchant (n:int) (l:int list) (acc:int):int =
        match l with
        | [] -> acc
        | x::xs -> 
            let notX = List.filter (fun x' -> x' != x) xs in
            let isX = x :: List.filter (fun x' -> x' = x) xs in 
            let len = List.length isX in
            let numPairs = len/2  in
            sockMerchant n notX (acc + numPairs)
;;

let rec readLine (i:int) =  
        let numSocks = int_of_string (read_line()) in
        let sockList = List.map (int_of_string) (String.split_on_char ' ' (read_line())) in    
        let result  =  sockMerchant numSocks sockList 0 in
        let _ = output_string stdout (string_of_int result) in
        (try readLine (i) with _ -> 1) in
        readLine 0;;


