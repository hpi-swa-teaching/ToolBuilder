tests
test05BuildWithGeneration

	| respondsToMethods |	
	respondsToMethods := #(#buildWith: #buildWindowWith: #buildWindowWith:specs: #buildListMorphWith:
		#buildButtonMorphWith: #buildCheckBoxMorphWith: #buildTextMorphWith: #buildPanelMorphWith: #customCode).
		
	respondsToMethods do: [ :respondsToMethod | testUi respondsTo: respondsToMethod].
	
	"Rückgabewerte testen"
	
	self assert: ((testUi buildButtonMorphWith: ToolBuilder) isKindOf: PluggableButtonSpec).