data Door
  = Open
  | Closed
  deriving (Eq, Show)

toggle :: Door -> Door
toggle Open = Closed
toggle Closed = Open

toggleEvery :: Int -> [Door] -> [Door]
toggleEvery k = zipWith toggleK [1 ..]
  where
    toggleK n door
      | n `mod` k == 0 = toggle door
      | otherwise = door

run :: Int -> [Door]
run n = foldr toggleEvery (replicate n Closed) [1 .. n]

main :: IO ()
--main = print $ (map (\(x,y) -> putStrLn $ "Door " ++  show (x) ++ " is " ++ show (y) ++ "\n" ) (zip [1 ..] (run 100)))
main = print $ (map (\(x,y) -> "Door " ++  show (x) ++ " is " ++ show (y) ++ "\n" ) (zip [1 ..] (run 100)))
