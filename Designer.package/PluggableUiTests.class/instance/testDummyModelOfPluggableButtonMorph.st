tests
testDummyModelOfPluggableButtonMorph

	| pluggableButtonMorph |	
	pluggableButtonMorph := PluggableButtonMorph pluggableDefault.
	
	self assert: pluggableButtonMorph model notNil.
