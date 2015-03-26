tests
test04PluggableTreeMorphGeneration
	
	self assert: (testUi respondsTo: #treeMorphRoots).
	
	self assert: (testUi treeMorphRoots isKindOf: Array).