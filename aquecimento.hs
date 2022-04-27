countNeg xs = length $ filter (<0) xs

final qtd = reverse . take qtd . reverse

contEquals x y z = 
    if x == y && x == z
        then 3
        else if x /= y && x /= z && y /= z
        then 0
        else 2

interior = drop 1 . reverse . drop 1 . reverse

gangorra p1 c1 p2 c2 = 
    if p1 * c1 == p2 * c2
        then 0
        else if p1 * c1 < p2 * c2
        then 1
        else -1


min2 :: Ord p => p -> p -> p
min2 x y =
    if x < y
        then x
        else y

soma2 x y = x + y


min3 x y z =
    min2 x (min2 y z)



