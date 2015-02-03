*OaM-Benchmarks
oamBenchmark
	^ 'oam: ', OaMInvocationBenchmark new benchmarkJITAll printString,
		String crlf, '; cop: ', OaMCopBenchmark new runSimple printString