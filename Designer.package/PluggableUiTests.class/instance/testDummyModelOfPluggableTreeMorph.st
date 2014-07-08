tests
testDummyModelOfPluggableTreeMorph

	| pluggableTreeMorph |	
	pluggableTreeMorph := PluggableTreeMorph pluggableDefault.
	
	self assert: pluggableTreeMorph model notNil.
	self assert: (pluggableTreeMorph model respondsTo: #roots).
