plain
benchmarkPlainWithoutArguments: iterations
	| receiver |
	receiver := self plainReceiver.
	^ self benchmark: [receiver methodWithoutArgs] iterations: iterations