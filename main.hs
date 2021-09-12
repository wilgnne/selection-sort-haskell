module Main where

-- Indice do menor valor entre i e j
minIndex a i j
  | i == j = i -- se i igual a j returna i
  | (a !! i) < (a !! k) = i -- se o k-esimo elemento for maior que o i-esimo elemento retorna i
  | otherwise = k -- se não retorna k
  where
    k = minIndex a (i + 1) j -- k é o indice no menor valor entre i+1 e j

-- Retorna um lista com o i-esimo elementro trocado com o j-esino elemento
swap i j xs =
  left ++ [elemJ] ++ middle ++ [elemI] ++ right
  where
    elemI = xs !! i -- i-esimo elemento
    elemJ = xs !! j -- j-esimo elemento
    left = take i xs -- esqueda do i-esimo elemento
    middle = take (j - i -1) (drop (i + 1) xs) -- elementos entre i e j
    right = drop (j + 1) xs -- direita do j-esimo elemento

-- Implementação do Selection Sort
recursiveSelectionSort a n index
  | index == n = a -- Se indice igual ao tamanho da lista retorna a lista
  | k /= index = recursiveSelectionSort (swap index k a) n (index + 1) -- se indice for o menor valor, troca os elementos index e k de lugar, e ordena o restante da lista
  | otherwise = recursiveSelectionSort a n (index + 1) -- se não ordena o restante da lista
  where
    k = minIndex a index (n -1) -- k é o indice no menor valor entre indice e n-1

main = do
  input <- getLine
  let list = read input :: [Int]
  let len = length list
  let ordened = recursiveSelectionSort list len 0
  let s = show ordened
  putStrLn ("Selection sort output: " ++ s)
