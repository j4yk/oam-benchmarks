plain
benchmarkPlainWithOneArgument: iterations
	| receiver |
	receiver := self plainReceiver.
	^ Time millisecondsToRun: [iterations asInteger timesRepeat: [receiver methodWithSingleArg: 5]]