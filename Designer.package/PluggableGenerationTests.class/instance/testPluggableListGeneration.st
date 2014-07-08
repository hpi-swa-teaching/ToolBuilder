tests
testPluggableListGeneration

	| testUi |

	testUi := TestUi new.
	
	self assert: (testUi respondsTo: #listMorphGetIndex).
	self assert: (testUi respondsTo: #listMorphGetSelected).
	self assert: (testUi respondsTo: #listMorphList).
	self assert: (testUi respondsTo: #listMorphSetSelected:).
	self assert: (testUi respondsTo: #listMorphSetIndex:).
	
	self assert: (testUi listMorphList isKindOf: Array).	
	self assert: (testUi listMorphGetIndex isKindOf: Integer).
	self assert: (testUi listMorphGetSelected isKindOf: ByteString).