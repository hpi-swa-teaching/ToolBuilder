tests
testDummyModelOfPluggableCheckBoxMorph
	| pluggableCheckBoxSpec pluggableCheckBoxMorph |
	
	pluggableCheckBoxSpec := PluggableCheckBoxSpec new.
	pluggableCheckBoxSpec label: #label; 
		action: #action;
		state: #state;
		model: PluggableCheckBoxModel new.
	pluggableCheckBoxMorph := ToolBuilder build: pluggableCheckBoxSpec.
	
	self assert: pluggableCheckBoxMorph model notNil.
	self assert: (pluggableCheckBoxMorph model respondsTo: #label). 
	self assert: (pluggableCheckBoxMorph model respondsTo: #action).
	self assert: (pluggableCheckBoxMorph model respondsTo: #state).
	