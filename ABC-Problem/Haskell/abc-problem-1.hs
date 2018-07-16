import Data.List (delete)
import Data.Char (toUpper, toLower)

-- returns list of all solutions, each solution being a list of blocks
abc :: (Eq a) => [[a]] -> [a] -> [[[a]]]
abc _ [] = [[]]
abc blocks (c:cs) = [b:ans | b <- blocks, c `elem` b,
                             ans <- abc (delete b blocks) cs]

blocks = ["BO", "XK", "DQ", "CP", "NA", "GT", "RE", "TG", "QD", "FS",
          "JW", "HU", "VI", "AN", "OB", "ER", "FS", "LY", "PC", "ZM"]

lowerFirst (c:cs) = (toLower c) : cs

main :: IO ()
main = mapM_ (\w -> putStrLn $ w ++ ": " ++ lowerFirst (show $ not . null $ abc blocks (map toUpper w)))
         ["A", "BARK", "BoOK", "TrEAT", "COmMoN", "SQUAD", "conFUsE"]
