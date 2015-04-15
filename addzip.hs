

















addzip a b =
    let zipped = zip a b in
	map(\ a -> if (fst a)<=122 && (fst a)>96 then ((+) (fst a) (snd a)) `mod` 26 (+) (fst a) else (fst a)) zipped
        --compares the first element of each tuple, not the whole tuple
        --creates a lambda function that checks if the first value is in range
        --then adds the two elements of each tuple together
        --loop through zipped array and add tuple elements together

