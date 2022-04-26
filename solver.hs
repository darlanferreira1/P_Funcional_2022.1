import Text.Html (yellow)
--fold/reduce/accumulate
soma :: Num a => a -> a -> a
soma x y = x + y

somaTodos xs = foldl soma 0 xs

contar xs y = foldl achei 0 xs
    where achei acc x = if x == y then acc + 1 else acc 

-- int soma3(int x, int y, int z) {
    -- return x + y + z;
-- }

--soma_xy_com_5 = std::bind(soma3(x,y,5))

-- contar xs y = foldl (achei y) 0 xs

--somar_impares xs = foldl (\a y -> if odd y then a + y else a) 0 xs


--menor xs = foldl (\a x-> if x < a then)