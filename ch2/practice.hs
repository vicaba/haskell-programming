five = x
 where x = 5
mult = x * x
 where x = 5
mult2 = x * y
 where x = 5
       y = 6

sum1 x = x + 3

waxOn = x * 5
 where x = y ^ 2
       y = z + 8
       z = 7

triple x = x * 3

waxOff :: Integer -> Integer

waxOff x = triple $ sum1 x

