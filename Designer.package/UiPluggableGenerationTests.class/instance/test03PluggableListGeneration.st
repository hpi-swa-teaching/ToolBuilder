tests
test03PluggableListGeneration

	| respondsToMethods |
	respondsToMethods := #(#listMorphGetIndex #listMorphGetSelected #listMorphList #listMorphSetSelected:
		#listMorphSetIndex:).
		
	respondsToMethods do: [ :respondsToMethod | testUi respondsTo: respondsToMethod].
	
	self assert: (testUi listMorphList isKindOf: Array).	
	self assert: (testUi listMorphGetIndex isKindOf: Integer).
	self assert: (testUi listMorphGetSelected isKindOf: ByteString).