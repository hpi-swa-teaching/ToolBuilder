tests
test03DummyModelOfPluggableTextMorph

	| pluggableTextMorph |	
	pluggableTextMorph := PluggableTextMorph pluggableDefault.
	
	self assert: pluggableTextMorph model notNil.
