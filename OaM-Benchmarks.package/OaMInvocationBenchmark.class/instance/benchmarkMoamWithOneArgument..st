multiple OaMs
benchmarkMoamWithOneArgument: iterations
	| receiver |
	receiver := self moamReceiver.
	^ Time millisecondsToRun: [iterations asInteger timesRepeat: [receiver methodWithSingleArg: 5]]