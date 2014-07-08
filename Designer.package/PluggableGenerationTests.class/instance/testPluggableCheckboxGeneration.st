tests
testPluggableCheckboxGeneration

	| testUi |

	testUi := TestUi new.
	
	self assert: (testUi respondsTo: #checkBoxMorphAction).
	self assert: (testUi respondsTo: #checkBoxMorphLabel).
	self assert: (testUi respondsTo: #checkBoxMorphState).
	
	self assert: (testUi checkBoxMorphAction isKindOf: BlockClosure).	
	self assert: (testUi checkBoxMorphLabel isKindOf: ByteString).
	self assert: (testUi checkBoxMorphState isKindOf: Boolean).