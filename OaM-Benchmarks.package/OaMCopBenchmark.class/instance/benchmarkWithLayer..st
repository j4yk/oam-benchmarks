as yet unclassified
benchmarkWithLayer: iterations
	#oamBenchmarkLayer withLayerDo: [
		^ Time millisecondsToRun: [iterations timesRepeat: [self simpleCop]]]