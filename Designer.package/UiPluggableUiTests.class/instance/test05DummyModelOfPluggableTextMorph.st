tests
test05DummyModelOfPluggableTextMorph

	| pluggableTextMorph |	
	pluggableTextMorph := PluggableTextMorph pluggableDefault.
	
	self assert: pluggableTextMorph model notNil.
