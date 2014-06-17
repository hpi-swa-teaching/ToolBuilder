code generation - pluggable
injectPluggableUiCodeFor: aMorph into: stream 
	| creationTemplate |
	creationTemplate := '({1}) -> [self build{2}With: builder].'.
	source submorphs
		do: [:submorphTemplate | 
			stream
				nextPutAll: (creationTemplate format: {self rectFor: submorphTemplate. submorphTemplate objectName asString capitalized});
				 crtab.
			self createBuildWithFor: submorphTemplate].
	stream nextPutAll: '}.
	self customCode.
	^builder build: windowSpec'