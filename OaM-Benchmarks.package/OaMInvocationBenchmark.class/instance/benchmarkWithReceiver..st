as yet unclassified
benchmarkWithReceiver: anObject
	| totalTime |
	totalTime := 0.
	{ [:i | anObject methodWithoutArgs]. 
	   [:i | anObject methodWithSingleArg: 5]. 
	   [:i | anObject methodWithTwo: 10 args: 5] } 
	do: [:benchmarkBlock | | newTime |
		newTime := Time millisecondsToRun: [ 1 to: 1000000 do: benchmarkBlock ].
		totalTime := totalTime + newTime].
	^ totalTime