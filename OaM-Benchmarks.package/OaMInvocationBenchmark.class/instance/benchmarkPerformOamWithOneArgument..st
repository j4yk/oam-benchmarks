perform OaM
benchmarkPerformOamWithOneArgument: iterations
	| receiver |
	receiver := self performOamReceiver.
	^ self benchmark: [receiver methodWithSingleArg: 5] iterations: iterations