as yet unclassified
run
	| total |
	total := 0.
	#otherFib withoutLayerDo: [total := total + (Time millisecondsToRun: [self fib: 20])].
	#otherFib withLayerDo: [total := total + (Time millisecondsToRun: [self fib: 20])].
	^ total