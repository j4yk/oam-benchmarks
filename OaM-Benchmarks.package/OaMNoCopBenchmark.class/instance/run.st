as yet unclassified
run
	| total |
	total := 0.
	total := total + (Time millisecondsToRun: [self fib: 20]).
	total := total + (Time millisecondsToRun: [self otherFib: 20]).
	^ total