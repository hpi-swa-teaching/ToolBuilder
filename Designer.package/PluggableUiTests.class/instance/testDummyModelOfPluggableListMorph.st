tests
testDummyModelOfPluggableListMorph
	
	| pluggableListSpec pluggableListMorph |	
	pluggableListSpec := PluggableListSpec new.
	pluggableListSpec 
		list: #list; 
		getIndex: #getIndex;
		setIndex: #setIndex:;
		getSelected: #getSelected;
		setSelected: #setSelected:;
		model: PluggableListModel new.
	pluggableListMorph := ToolBuilder build: pluggableListSpec.
	
	self assert: pluggableListMorph model notNil.
	self assert: (pluggableListMorph model respondsTo: #getIndex). 
	self assert: (pluggableListMorph model respondsTo: #getSelected).
	self assert: (pluggableListMorph model respondsTo: #setIndex:).
	self assert: (pluggableListMorph model respondsTo: #setSelected:).
	self assert: (pluggableListMorph model respondsTo: #list).