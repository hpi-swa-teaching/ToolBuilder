tests
testDummyModelOfPluggableCheckBoxMorph

	| pluggableCheckBoxMorph |	
	pluggableCheckBoxMorph := PluggableCheckBoxMorph pluggableDefault.
	
	self assert: pluggableCheckBoxMorph model notNil.
	self assert: (pluggableCheckBoxMorph model respondsTo: #label). 
	self assert: (pluggableCheckBoxMorph model respondsTo: #action).
	self assert: (pluggableCheckBoxMorph model respondsTo: #state).
	