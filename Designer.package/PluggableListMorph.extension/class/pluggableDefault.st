*designer
pluggableDefault

	| pluggableListMorph pluggableListSpec |
	pluggableListSpec := PluggableListSpec new.
	pluggableListSpec 
		model: UiPluggableListModel new;
		list: #list;
		getIndex: #getIndex;
		setIndex: #setIndex:;
		getSelected: #getSelected;
		setSelected: #setSelected:. 
	pluggableListMorph := ToolBuilder build: pluggableListSpec.
	^pluggableListMorph.