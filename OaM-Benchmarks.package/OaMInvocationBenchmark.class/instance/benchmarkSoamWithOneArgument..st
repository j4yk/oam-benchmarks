single OaM
benchmarkSoamWithOneArgument: iterations
	| receiver |
	receiver := self soamReceiver.
	^ self benchmark: [receiver methodWithSingleArg: 5] iterations: iterations