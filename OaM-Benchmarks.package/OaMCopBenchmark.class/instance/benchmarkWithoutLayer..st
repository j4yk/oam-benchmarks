as yet unclassified
benchmarkWithoutLayer: iterations
	#oamBenchmarkLayer withoutLayerDo: [
		^ Time millisecondsToRun: [iterations timesRepeat: [self simpleCop]]]