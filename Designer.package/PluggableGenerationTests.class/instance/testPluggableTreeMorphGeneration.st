tests
testPluggableTreeMorphGeneration

	| testUi |

	testUi := TestUi new.
	
	self assert: (testUi respondsTo: #treeMorphRoots).
	
	self assert: (testUi treeMorphRoots isKindOf: Array).