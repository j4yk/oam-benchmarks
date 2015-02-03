JIT benchmarks
benchmarkWithOneArgument
	| iterations receiver results |
	"code redundancy is intended so the loops are unrelated for the JIT"
	iterations := 1000000.
	results := Dictionary new.
	receiver := OaMPlainMethodsCarrier new.
	results at: #plain put: (Time millisecondsToRun: [iterations timesRepeat: [receiver methodWithSingleArg: 5]]).
	receiver := OaMCarrierClass new.
	results at: #multipleOaM put: (Time millisecondsToRun: [iterations timesRepeat: [receiver methodWithSingleArg: 5]]).
	receiver := OaMCarrierClass2 new.
	results at: #switchOaM put: (Time millisecondsToRun: [iterations timesRepeat: [receiver methodWithSingleArg: 5]]).
	receiver := OaMPerformCarrierClass new.
	results at: #performOaM put: (Time millisecondsToRun: [iterations timesRepeat: [receiver methodWithSingleArg: 5]]).
	^ results