*OaM-Benchmarks
copBenchmark: whichAndIterations
	| parts which iterations selector |
	parts := whichAndIterations asString findTokens: ' '.
	which := parts first.
	iterations := parts second asInteger.
	selector := ('benchmark', which, ':') asSymbol.
	^ (OaMCopBenchmark new perform: selector withArguments: {iterations}) printString