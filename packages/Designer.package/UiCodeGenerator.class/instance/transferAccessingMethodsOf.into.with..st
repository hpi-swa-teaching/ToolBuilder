code generation - pluggable
transferAccessingMethodsOf: aMorph into: aStream with: aTemplate

	| accessingMethods name |
	name := aMorph objectName.
	accessingMethods := aMorph model class methodsInCategory: 'accessing'.
			
	accessingMethods do: [ :selector |
		| actionName actionSelector newMethod newMethodName | 
		(selector findString: ':') > 0 
			ifTrue: [actionName := selector allButLast.
				actionSelector := name , actionName asString capitalized, ':'.] 
			ifFalse: [actionName := selector.
				actionSelector := name , actionName asString capitalized.].
		aStream nextPutAll: (aTemplate format: {
			name.
			actionName.
			'#', actionSelector}); crtab.
		
		newMethod := aMorph model class decompile: selector.
		newMethod := newMethod asString allButFirst: selector size.
			
		instVars do: [ :instVar | newMethod := newMethod asString 
			copyWithRegex: instVar 
			matchesReplacedWith: name , instVar capitalized].
			
		accessingMethods do: [ :accessingMethod |
			(accessingMethod findString: ':') > 0
				ifTrue: [newMethodName := accessingMethod allButLast]
				ifFalse: [newMethodName := accessingMethod].
				
			newMethod := newMethod asString
				copyWithRegex: newMethodName
				matchesReplacedWith: name , newMethodName capitalized].
				
		newMethod := name , selector capitalized , newMethod asString capitalized.
			
		self uiClass 
			compile: newMethod
			classified: (name asString, 'Methods')].