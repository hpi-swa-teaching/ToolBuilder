code generation - pluggable
createBuildWithFor: aMorph

	| stream name specClass propertyTemplate returnTemplate accessingMethods |
	propertyTemplate := '{1} {2}: {3}.'.
	returnTemplate := '^{1}'.
	specClass := self getSpecName: aMorph.
	name := aMorph objectName.
	self uiClass addInstVarName: name.
	stream := WriteStream on: ''.
	stream nextPutAll: 'build' , name asString capitalized , 'With: builder
	| ' , name , ' |
		' , name , ' := ' , specClass , ' new.
		'.
		stream nextPutAll: (propertyTemplate format: {name. 'model'. 'self'}); crtab.
		
		instVars := aMorph model class instVarNames copy.
		instVars do: [ :instVar | self uiClass addInstVarName: name , instVar asString capitalized].
		accessingMethods := aMorph model class methodsInCategory: 'accessing'.
				
		accessingMethods do:
			[:selector | | actionName actionSelector newMethod newMethodName | 
				(selector findString: ':') > 0 
					ifTrue: [actionName := selector allButLast.
						actionSelector := name , actionName asString capitalized, ':'.] 
					ifFalse: [actionName := selector.
						actionSelector := name , actionName asString capitalized.].
				stream nextPutAll: (propertyTemplate format: {
				name.
				actionName.
				'#', actionSelector}); crtab.
				newMethod := aMorph model class decompile: selector.
				newMethod := newMethod asString allButFirst: selector size.
				
				instVars do: [ :instVar | newMethod := newMethod asString 
					copyWithRegex: instVar 
					matchesReplacedWith: name , instVar capitalized].
				
				accessingMethods do: [ :accessingMethod |
					(accessingMethod findString: ':') > 0 ifTrue: [
						newMethodName := accessingMethod allButLast]
					ifFalse: [newMethodName := accessingMethod].
					
					newMethod := newMethod asString
						copyWithRegex: newMethodName
						matchesReplacedWith: name , newMethodName capitalized].
					
				newMethod := name , selector capitalized , newMethod asString capitalized.
				
				self uiClass 
						compile: newMethod
						classified: (name asString, 'Methods')].
		stream
			nextPutAll: (returnTemplate format: {name}).
		self uiClass compile: stream contents classified: 'toolbuilder'.