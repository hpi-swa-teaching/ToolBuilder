tests
testPluggableButtonGeneration

	| testUi |

	testUi := TestUi new.
	
	self assert: (testUi respondsTo: #buttonMorphAction).
	self assert: (testUi respondsTo: #buttonMorphLabel).
	
	self assert: (testUi buttonMorphAction isKindOf: BlockClosure).	
	self assert: (testUi buttonMorphLabel isKindOf: ByteString).