*Designer
pluggableDefault

	| pluggableListMorph pluggableListSpec |
	
	pluggableListSpec := PluggableListSpec new.
	pluggableListSpec model: PluggableListModel. 
	pluggableListMorph := (ToolBuilder default) build: pluggableListSpec.
	^pluggableListMorph.