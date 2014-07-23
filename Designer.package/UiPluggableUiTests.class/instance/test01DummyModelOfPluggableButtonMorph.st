tests
test01DummyModelOfPluggableButtonMorph

	| pluggableButtonMorph |	
	pluggableButtonMorph := PluggableButtonMorph pluggableDefault.
	
	self assert: pluggableButtonMorph model notNil.
