tests
testDummyModelOfPluggableButtonMorph
	| pluggableButtonSpec pluggableButtonMorph |
	
	pluggableButtonSpec := PluggableButtonSpec new.
	pluggableButtonSpec model: PluggableButtonModel new.
	pluggableButtonMorph := ToolBuilder build: pluggableButtonSpec.
	
	self assert: pluggableButtonMorph model notNil.
