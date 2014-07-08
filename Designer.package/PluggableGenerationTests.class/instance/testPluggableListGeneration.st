tests
testPluggableListGeneration

	| testUi |

	testUi := TestUi new.
	
	self assert: (testUi respondsTo: #getIndexListMorph).
	self assert: (testUi respondsTo: #getSelectedListMorph).
	self assert: (testUi respondsTo: #listListMorph).
	self assert: (testUi respondsTo: #setSelectedListMorph:).
	self assert: (testUi respondsTo: #setIndexListMorph:).
	
	self assert: (testUi getSelectedListMorph isKindOf: OrderedCollection).	
	"self assert: (testUi getIndexListMorph isKindOf: )"