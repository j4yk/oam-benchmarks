multiple OaMs
benchmarkMoamWithoutArguments: iterations
	| receiver |
	receiver := self moamReceiver.
	^ self benchmark: [receiver methodWithoutArgs] iterations: iterations