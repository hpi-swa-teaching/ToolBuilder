code generation - pluggable
createBuildWithFor: aMorph 
	| stream name specClass propertyTemplate returnTemplate |
	propertyTemplate := '{1} {2}: {3}.'.
	returnTemplate := '^{1}'.
	specClass := self getSpecName: aMorph.
	name := aMorph objectName.
	stream := WriteStream on: ''.
	stream nextPutAll: 'build' , name asString capitalized , 'With: builder
	| ' , name , ' |
	' , name , ' := ' , specClass , ' new.
	'.
	stream nextPutAll: (propertyTemplate format: {name. 'model'. 'self'}); crtab.
	
	instVars := aMorph model class instVarNames copy.
	instVars do: [ :instVar | self uiClass addInstVarName: name , instVar asString capitalized].
			
	(aMorph model class methodsInCategory: 'accessing') do:
		[:selector | | actionName actionSelector newMethod | 
			(selector findString: ':') > 0 
				ifTrue: [actionName := selector allButLast.
					actionSelector := name , actionName asString capitalized, ':'.] 
				ifFalse: [actionName := selector.
					actionSelector := name , actionName asString capitalized.].
			stream nextPutAll: (propertyTemplate format: {
			name.
			actionName.
			'#', actionSelector}); crtab.
			newMethod := name , (aMorph model class decompile: selector) asString capitalized.
			instVars do: [ :instVar | newMethod := newMethod asString copyWithRegex: instVar matchesReplacedWith: name , instVar capitalized].
			self uiClass 
					compile: newMethod
					classified: (name asString, 'Methods')].
	stream
		nextPutAll: (returnTemplate format: {name}).
	self uiClass compile: stream contents classified: 'toolbuilder'