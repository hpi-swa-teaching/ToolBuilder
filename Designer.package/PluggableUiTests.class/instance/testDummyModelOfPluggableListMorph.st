tests
testDummyModelOfPluggableListMorph
	
	| pluggableListMorph |	
	pluggableListMorph := PluggableListMorph pluggableDefault.
	
	self assert: pluggableListMorph model notNil.
	self assert: (pluggableListMorph model respondsTo: #getIndex). 
	self assert: (pluggableListMorph model respondsTo: #getSelected).
	self assert: (pluggableListMorph model respondsTo: #setIndex:).
	self assert: (pluggableListMorph model respondsTo: #setSelected:).
	self assert: (pluggableListMorph model respondsTo: #list).