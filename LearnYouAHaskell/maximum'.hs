maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of an empty list"
maximum' [x] = x
maximum' (x:xs)
	| x > maxTail = x
	| otherwise = maxTail
	where maxTail = maximum' xs
