tests
testDummyModelOfPluggableTextMorph
	| pluggableTextSpec pluggableTextMorph |
	
	pluggableTextSpec := PluggableTextSpec new.
	pluggableTextMorph := ToolBuilder build: pluggableTextSpec.
	
	self assert: pluggableTextMorph model notNil.
