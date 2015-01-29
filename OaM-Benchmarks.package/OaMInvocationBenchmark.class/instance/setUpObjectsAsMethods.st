as yet unclassified
setUpObjectsAsMethods
	| selectors |
	selectors := #(methodWithoutArgs methodWithSingleArg: methodWithTwo:args:).
	SystemChangeNotifier uniqueInstance doSilently: [
		OaMCarrierClass 
			removeSelector: #methodWithoutArgs;
			addSelector: #methodWithoutArgs withMethod: OaMNoArgMethodObject new;
			removeSelector: #methodWithSingleArg:;
			addSelector: #methodWithSingleArg: withMethod: OaMSingleArgMethodObject new;
			removeSelector: #methodWithTwo:args:;
			addSelector: #methodWithTwo:args: withMethod: OaMMultipleArgsMethodObject new.
		selectors do: [:sel |
			OaMCarrierClass2 removeSelector: sel;
				addSelector: sel withMethod: OaMMethodObject new.
			OaMPerformCarrierClass removeSelector: sel;
				addSelector: sel withMethod: OaMPerformMethodObject new. ]]