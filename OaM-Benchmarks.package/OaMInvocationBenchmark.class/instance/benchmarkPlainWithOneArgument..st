plain
benchmarkPlainWithOneArgument: iterations
	| receiver |
	receiver := self plainReceiver.
	^ self benchmark: [receiver methodWithSingleArg: 5] iterations: iterations