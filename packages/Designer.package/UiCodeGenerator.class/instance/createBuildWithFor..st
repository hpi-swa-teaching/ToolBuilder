code generation - pluggable
createBuildWithFor: aMorph

	| stream name specClass propertyTemplate returnTemplate |
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
		
	self transferAccessingMethodsOf: aMorph into: stream with: propertyTemplate.
	
	stream nextPutAll: (returnTemplate format: {name}).
	self uiClass compile: stream contents classified: 'toolbuilder'.