perform OaM
benchmarkPerformOamWithOneArgument: iterations
	| receiver |
	receiver := self performOamReceiver.
	^ Time millisecondsToRun: [iterations asInteger timesRepeat: [receiver methodWithSingleArg: 5]]