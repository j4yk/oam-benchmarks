single OaM
benchmarkSoamWithoutArguments: iterations
	| receiver |
	receiver := self soamReceiver.
	^ Time millisecondsToRun: [iterations asInteger timesRepeat: [receiver methodWithoutArgs]]