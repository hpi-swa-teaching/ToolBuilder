tests
test01PluggableButtonGeneration
	
	self assert: (testUi respondsTo: #buttonMorphAction).
	self assert: (testUi respondsTo: #buttonMorphLabel).
	
	self assert: (testUi buttonMorphAction isKindOf: BlockClosure).	
	self assert: (testUi buttonMorphLabel isKindOf: ByteString).