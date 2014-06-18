*Designer
pluggableDefault

	| pluggableListMorph pluggableListSpec |
	pluggableListSpec := PluggableListSpec new.
	pluggableListSpec list: #list.
	pluggableListSpec getIndex: #getIndex.
	pluggableListSpec setIndex: #setIndex:.
	pluggableListSpec getSelected: #getSelected.
	pluggableListSpec setSelected: #setSelected:.
	pluggableListSpec model: PluggableListModel new. 
	pluggableListMorph := (ToolBuilder default) build: pluggableListSpec.
	^pluggableListMorph.