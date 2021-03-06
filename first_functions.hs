module FirstFunctions where

sayTwice :: String -> String
sayTwice s = s ++ s

cube :: Int -> Int
cube n = n * n * n

sign :: Int -> Int
sign n 
    | n > 0 = 1
    | n < 0 = -1
    | n == 0 = 0

isPalindrome :: String -> Bool
isPalindrome s 
    | reverse s == s = True
    | otherwise      = False

fizzbuzz :: Int -> String
fizzbuzz i
    | mod i 5 == 0 && mod i 3 /= 0 = "buzz"
    | mod i 3 == 0 && mod i 5 /= 0 = "fizz"
    | mod i 3 == 0 && mod i 5 == 0 = "fizzbuzz"   
    | otherwise = show i

tuples :: (Int, Int) -> Int
tuples (a,b) = a + b

area :: (Double, Double) -> Double
area (a, b) = a * b

perimeter :: (Double, Double) -> Double
perimeter (a,b) = 2 * a + 2 * b

areaAndPerimeter :: (Double, Double) -> (Double, Double)
areaAndPerimeter tup = (area tup, perimeter tup)

ifThenElse :: (Bool, Int, Int) -> Int
ifThenElse (b, t, f)
    | b == True = t
    | b == False = f

divides :: Int -> Int -> Bool
divides a b = mod b a == 0

-- currying with partial application
inRange :: Int -> Int -> Int -> Bool
inRange lower upper query = lower <= query && query <= upper

betweenTenAndTwenty :: Int -> Bool
betweenTenAndTwenty query = inRange 10 20 query

my_sum :: Int -> Int
my_sum 0 = 0
my_sum n = n + my_sum (n - 1)

-- lazy evaluation
both :: Bool -> Bool -> Bool

-- recursive functions
sayAgain :: String -> Int -> String
sayAgain _ 0 = ""
sayAgain s i = s ++ sayAgain s (i - 1)