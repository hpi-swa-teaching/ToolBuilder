tests
testDummyModelOfPluggableTextMorph

	| pluggableTextMorph |	
	pluggableTextMorph := PluggableTextMorph pluggableDefault.
	
	self assert: pluggableTextMorph model notNil.
