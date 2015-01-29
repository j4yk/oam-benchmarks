as yet unclassified
run: aSelector with: arguments in: receiver
	aSelector == #methodWithoutArgs
		ifTrue: [^ self methodWithoutArgs].
	aSelector == #methodWithSingleArg:
		ifTrue: [^ self methodWithSingleArg: arguments first].
	aSelector == #methodWithTwo:args:
		ifTrue: [^ self methodWithTwo: arguments first args: arguments second].