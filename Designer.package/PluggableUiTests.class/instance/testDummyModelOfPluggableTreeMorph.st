tests
testDummyModelOfPluggableTreeMorph

	| pluggableTreeSpec pluggableTreeMorph |	
	pluggableTreeSpec := PluggableTreeSpec new.
	pluggableTreeSpec model: PluggableTreeModel new;
		roots: #roots.
	pluggableTreeMorph := ToolBuilder build: pluggableTreeSpec.
	
	self assert: pluggableTreeMorph model notNil.
	self assert: (pluggableTreeMorph model respondsTo: #roots).
