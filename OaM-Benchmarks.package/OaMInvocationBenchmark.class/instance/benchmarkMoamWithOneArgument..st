multiple OaMs
benchmarkMoamWithOneArgument: iterations
	| receiver |
	receiver := self moamReceiver.
	^ self benchmark: [receiver methodWithSingleArg: 5] iterations: iterations