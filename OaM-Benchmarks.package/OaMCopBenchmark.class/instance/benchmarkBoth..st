as yet unclassified
benchmarkBoth: iterations
	^ (self benchmarkWithLayer: iterations) + (self benchmarkWithoutLayer: iterations)