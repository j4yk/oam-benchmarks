single OaM
benchmarkSoamWithOneArgument: iterations
	| receiver |
	receiver := self soamReceiver.
	^ Time millisecondsToRun: [iterations asInteger timesRepeat: [receiver methodWithSingleArg: 5]]