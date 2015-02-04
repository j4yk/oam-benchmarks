plain
benchmarkPlainWithoutArguments: iterations
	| receiver |
	receiver := self plainReceiver.
	^ Time millisecondsToRun: [iterations asInteger timesRepeat: [receiver methodWithoutArgs]]