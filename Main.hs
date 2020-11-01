module Main where

main :: IO ()
main = do
  putStrLn "Euler 1"
  let n = getsumofmultiples 1 0
  print n
  putStrLn "Euler 2"

-- First problem

-- first is curr_int, second is sum
getsumofmultiples :: Int -> Int -> Int
getsumofmultiples 1000 sum = sum
getsumofmultiples curr_int sum = getsumofmultiples (curr_int+1) (sum+(addforthisnumber curr_int))

addforthisnumber :: Int -> Int
addforthisnumber a = max (if' (mod a 3==0) a 0) (if' (mod a 5==0) a 0)


-- Second problem











--Helpers


if' :: Bool -> a -> a -> a
if' True x _ = x
if' False _ y = y

