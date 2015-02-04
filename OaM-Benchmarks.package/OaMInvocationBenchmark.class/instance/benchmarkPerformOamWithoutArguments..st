perform OaM
benchmarkPerformOamWithoutArguments: iterations
	| receiver |
	receiver := self performOamReceiver.
	^ Time millisecondsToRun: [iterations asInteger timesRepeat: [receiver methodWithoutArgs]]