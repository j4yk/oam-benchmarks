as yet unclassified
benchmarkAll
	self setUpObjectsAsMethods.
	^ {'plain total'. self benchmarkWithPlainMethodCalls.
	'oam total'. self benchmarkWithObjectsAsMethods.
	'same-class oam total'. self benchmarkWithSameClassObjectsAsMethods.
	'perform-oam total'. self benchmarkWithPerformObjectsAsMethods}.