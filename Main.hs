module Main where

main :: IO ()
main = do
  putStrLn "Euler 1"
  let n1 = getsumofmultiples 1 0
  print n1
  putStrLn "Euler 2"
  let n2 = create_fibonacci_list 1 2 2
  print n2

-- First problem

-- first is curr_int, second is sum
getsumofmultiples :: Int -> Int -> Int
getsumofmultiples 1000 sum = sum
getsumofmultiples curr_int sum = getsumofmultiples (curr_int+1) (sum+(addforthisnumber curr_int))

addforthisnumber :: Int -> Int
addforthisnumber a = max (if' (mod a 3==0) a 0) (if' (mod a 5==0) a 0)


-- Second problem
-- First and second is current fibonacci number, third is sum
create_fibonacci_list :: Int -> Int -> Int -> Int
create_fibonacci_list a b x
    | a+b >=4000000    = x
    | otherwise = create_fibonacci_list b (a+b) (x+ (if'(mod (a+b) 2==0) (a+b) 0)) 

--Helpers


if' :: Bool -> a -> a -> a
if' True x _ = x
if' False _ y = y

