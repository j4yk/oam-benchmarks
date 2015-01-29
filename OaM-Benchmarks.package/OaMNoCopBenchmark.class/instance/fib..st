as yet unclassified
fib: n
	^ n < 2
		ifTrue: [1] 
		ifFalse: [(self fib: n - 1) + (self fib: (n-2)) + 1]