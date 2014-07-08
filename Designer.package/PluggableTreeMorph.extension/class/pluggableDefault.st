*designer
pluggableDefault
	
	| pluggableTreeSpec pluggableTreeMorph |
	pluggableTreeSpec := PluggableTreeSpec new.
	pluggableTreeSpec
		model: PluggableTreeModel new;
		roots: #roots.
	pluggableTreeMorph := ToolBuilder build: pluggableTreeSpec.
	pluggableTreeMorph color: Color white;
		borderWidth: 0.
	^ pluggableTreeMorph
		