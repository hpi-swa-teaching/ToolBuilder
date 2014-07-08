tests
testBuildWithGeneration

	| testUi | 
	
	testUi := TestUi new.
	
	self assert: (testUi respondsTo: #buildWith:).
	self assert: (testUi respondsTo: #buildWindowWith:).
	self assert: (testUi respondsTo: #buildWindowWith:specs:).
	self assert: (testUi respondsTo: #buildListMorphWith:).
	self assert: (testUi respondsTo: #buildButtonMorphWith:).
	self assert: (testUi respondsTo: #buildCheckBoxMorphWith:).
	self assert: (testUi respondsTo: #buildTextMorphWith:).
	self assert: (testUi respondsTo: #buildPanelMorphWith:).
	self assert: (testUi respondsTo: #customCode).
	
	"Rückgabewerte testen"
	
	self assert: ((testUi buildButtonMorphWith: ToolBuilder default) isKindOf: PluggableButtonSpec).