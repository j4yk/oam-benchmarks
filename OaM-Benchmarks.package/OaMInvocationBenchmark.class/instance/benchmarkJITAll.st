JIT benchmarks
benchmarkJITAll
	| results |
	self setUpObjectsAsMethods.
	results := Dictionary new.
	results at: 0 put: self benchmarkWithoutArguments.
	results at: 1 put: self benchmarkWithOneArgument.
	results at: 2 put: self benchmarkWithTwoArguments.
	^ results