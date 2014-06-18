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
	(aMorph model class methodsInCategory: 'accessing') do:
		[:selector | stream nextPutAll: (propertyTemplate format: {
			name.
			selector.
			'#', selector, name asString capitalized}); crtab.
			self uiClass 
					compile: (selector, name asString capitalized) 
					classified: (name asString, 'Methods')].
	"instVars := (((Smalltalk at: specClass asSymbol) allInstVarNames)
			select: [ :instVar |
		(((Smalltalk at: specClass asSymbol) allMethodsInCategory: 'accessing')
				select: [:t8 | (t8 asString last = $:) 
							& (t8 asString ~= 'model:') 
							& (t8 asString ~= 'frame:') ])
						includes: (instVar, $:)]).
	stream nextPutAll: (propertyTemplate format: {name. 'model'. 'self'}); crtab."
	"instVars
		do: [prop | stream
				nextPutAll: (propertyTemplate format: 
					{name. 
					prop. 
					'#', prop asSymbol, name asString capitalized});
				 	crtab.
				self uiClass 
					compile: (prop asSymbol, name asString capitalized) 
					classified: (name asString, 'Methods')]."
	stream
		nextPutAll: (returnTemplate format: {name}).
	self uiClass compile: stream contents classified: 'toolbuilder'
	