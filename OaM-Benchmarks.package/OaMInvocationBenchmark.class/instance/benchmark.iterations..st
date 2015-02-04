JIT benchmarks
benchmark: aBlock iterations: iterations
	self warmUp: aBlock.
	^ Time millisecondsToRun: [iterations asInteger timesRepeat: aBlock]