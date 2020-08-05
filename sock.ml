
open Printf

let rec sockMerchant (n:int) (l:int list) (acc:int):int =
        (*let () = List.iter (printf "%d; ") l in
        let () = printf "\nacc:%d\n" acc  in*)
        match l with
        | [] -> acc
        | x::xs -> 
            let notX = List.filter (fun x' -> x' != x) xs in
            let isX = x :: List.filter (fun x' -> x' = x) xs in 
            let len = List.length isX in
            let numPairs = len/2  in
            (*let () = List.iter (printf "%d; ") isX in
            let () = printf "\nx:%d\n" x in
            let () = printf "len:%d\n" len in
            let () = printf "numPairs:%d\n\n" numPairs in*)
            sockMerchant n notX (acc + numPairs)

;;

let nums =[10; 20; 20; 10; 10; 30; 50; 10; 20];;
sockMerchant 9 nums 0;;
