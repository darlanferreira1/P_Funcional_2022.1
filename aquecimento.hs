countNeg xs = length $ filter (<0) xs

final qtd = reverse . take qtd . reverse

contEquals x y z = 
    if x == y && x == z
        then 3
        else if x /= y && x /= z && y /= z
        then 0
        else 2

