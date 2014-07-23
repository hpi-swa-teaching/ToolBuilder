tests
test04DummyModelOfPluggableListMorph
	
	| pluggableListMorph respondsToMethods |	
	pluggableListMorph := PluggableListMorph pluggableDefault.
	respondsToMethods := #(#getIndex #getSelected #setIndex: #setSelected: #list).
	
	self assert: pluggableListMorph model notNil.
	respondsToMethods do: [ :respondsToMethod |
		pluggableListMorph model respondsTo: respondsToMethod].