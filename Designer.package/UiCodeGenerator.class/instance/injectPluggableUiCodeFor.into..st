code generation - pluggable
injectPluggableUiCodeFor: aMorph into: stream 
	| creationTemplate |
	creationTemplate := '({1}) -> [self build{2}With: builder].'.
	source submorphs
		do: [:submorph | 
			stream
				nextPutAll: (creationTemplate format: 
					{self rectFor: submorph. 
					submorph objectName asString capitalized});
				 crtab.
			self createBuildWithFor: submorph].
	stream nextPutAll: '}.
	self customCode.
	^builder build: windowSpec'