as yet unclassified
runSimple
	| results iterations |
	iterations := 1000000.
	results := Dictionary new.
	#oamBenchmarkLayer withoutLayerDo: [
		results at: #woLayer put: (Time millisecondsToRun: [iterations timesRepeat: [self simpleCop]])].
	#oamBenchmarkLayer withLayerDo: [
		results at: #withLayer put: (Time millisecondsToRun: [iterations timesRepeat: [self simpleCop]])].
	results at: #plainCall put: (Time millisecondsToRun: [iterations timesRepeat: [self simpleNoCop1]]).
	results at: #twoPlainCalls put: (Time millisecondsToRun: [iterations timesRepeat: [self simpleNoCop2]]).
	^ results