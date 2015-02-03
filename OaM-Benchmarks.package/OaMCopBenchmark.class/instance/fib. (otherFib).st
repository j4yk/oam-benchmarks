as yet unclassified
fib: n
	<layer: #otherFib>
	^ n < 2
		ifTrue: [2] 
		ifFalse: [(self fib: n - 1) + (self fib: (n-2)) + 1]