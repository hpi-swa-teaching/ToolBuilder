tests
test02DummyModelOfPluggableCheckBoxMorph

	| pluggableCheckBoxMorph respondsToMethods |	
	pluggableCheckBoxMorph := PluggableCheckBoxMorph pluggableDefault.
	respondsToMethods := #(#label #action #state).
	
	self assert: pluggableCheckBoxMorph model notNil.
	respondsToMethods do: [ :respondsToMethod |
		pluggableCheckBoxMorph model respondsTo: respondsToMethod].
	