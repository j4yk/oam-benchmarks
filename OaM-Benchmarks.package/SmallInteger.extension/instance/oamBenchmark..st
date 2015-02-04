*OaM-Benchmarks
oamBenchmark: whichAndIterations
	| parts which iterations selector |
	parts := whichAndIterations asString findTokens: ' '.
	which := parts first.
	iterations := parts second asInteger.
	selector := ('benchmark', which, ':') asSymbol.
	^ (OaMInvocationBenchmark new perform: selector withArguments: {iterations}) printString