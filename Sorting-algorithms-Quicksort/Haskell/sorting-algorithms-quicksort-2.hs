import Data.List (partition)


list = [1,2,9,4,6]

main :: IO ()
main = print $ qsort list

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort ys ++ x : qsort zs
  where
    (ys, zs) = partition (< x) xs
