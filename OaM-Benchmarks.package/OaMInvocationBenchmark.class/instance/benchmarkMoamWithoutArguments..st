multiple OaMs
benchmarkMoamWithoutArguments: iterations
	| receiver |
	receiver := self moamReceiver.
	^ Time millisecondsToRun: [iterations asInteger timesRepeat: [receiver methodWithoutArgs]]