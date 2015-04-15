import Data.Char


main = do
	putStr "Enter text:\n"
	input <- getLine
	putStr "Enter key:\n"
	key <- getLine
	let ascii_input = map ord input 
	let ascii_key = map ord key 
	--we need to ignore caps, so we'll handle this later--
	
	let ascii_new = addzip ascii_input ascii_key 
	--loops through the input and adds those values--

let addzip a b = 
	let zipped = zip a b in
	map(\ a -> if (fst a)<=122 && (fst a)>96 then ((+) (fst a) (snd a))%26 (+) (fst a) else (fst a)) zipped
		--compares the first element of each tuple, not the whole tuple
		--creates a lambda function that checks if the first value is in range
		--then adds the two elements of each tuple together
		--loop through zipped array and add tuple elements together


--map takes a function that tranforms one piece of data to another, and a list
--it then returns another list where the function has been applied to each item
--
--fold is an accumlator that works element by element
--
--haskell does not have variables, but we can crete named values inside of 
--functions with let. This can be used for simple values or functions, etc
--
--take a look at ians pattern matching section!!!
--
--to write a string literal use putStr
