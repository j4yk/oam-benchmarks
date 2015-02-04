perform OaM
benchmarkPerformOamWithoutArguments: iterations
	| receiver |
	receiver := self performOamReceiver.
	^ self benchmark: [receiver methodWithoutArgs] iterations: iterations