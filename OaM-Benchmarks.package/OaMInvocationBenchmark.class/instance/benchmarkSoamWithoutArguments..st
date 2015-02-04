single OaM
benchmarkSoamWithoutArguments: iterations
	| receiver |
	receiver := self soamReceiver.
	^ self benchmark: [receiver methodWithoutArgs] iterations: iterations