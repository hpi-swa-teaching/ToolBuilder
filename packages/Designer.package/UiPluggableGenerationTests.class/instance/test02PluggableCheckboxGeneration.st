tests
test02PluggableCheckboxGeneration
	
	| respondsToMethods |
	respondsToMethods := #(#checkBoxMorphAction #checkBoxMorphLabel #checkBoxMorphState).
	
	respondsToMethods do: [ :respondsToMethod | testUi respondsTo: respondsToMethod].
	
	self assert: (testUi checkBoxMorphAction isKindOf: BlockClosure).	
	self assert: (testUi checkBoxMorphLabel isKindOf: ByteString).