splitAt' xs pos = (take pos xs, xs !! pos, drop (pos + 1) xs)

--swap [1..10] 2 4 = [1,2,3,2,4,6,7,8,9,10]

swap xs p1 p2 = inicio ++ [ep2] ++ meio ++ [ep1] ++ fim
    where   (inicio, ep1, resto) = splitAt' xs p1
            (meio, ep2, fim) = splitAt' resto ((p2 - p1) -1)


splitAtRec' [] pos ind result = result 
splitAtRec' (x:xs) pos ind result 
            | pos < ind = splitAtRec' xs pos (ind + 1) (antes ++ [x], elem, depois)
            | pos == ind = splitAtRec' xs  pos (ind + 1) (antes, x , depois)
            | otherwise = splitAtRec' xs pos (ind + 1) (antes, elem, depois ++ [x])
    where (antes, elem, depois) = result  
 

splitAtRec  xs pos = splitAtRec' xs pos 0 ([],0,[]) 


splitAtRecF xs pos = 