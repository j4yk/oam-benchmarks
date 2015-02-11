as yet unclassified
benchmarkPlainCalls: iterations
	^ Time millisecondsToRun: [iterations timesRepeat: [self simpleNoCop2]].