as yet unclassified
otherFib: n
	^ n < 2
		ifTrue: [2] 
		ifFalse: [(self otherFib: n - 1) + (self otherFib: (n-2)) + 1]