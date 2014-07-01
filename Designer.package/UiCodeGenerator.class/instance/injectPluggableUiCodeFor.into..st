code generation - pluggable
injectPluggableUiCodeFor: aMorph into: stream 
	| creationTemplate |
	creationTemplate := '({1}) -> [self build{2}With: builder].'.
	self addSubmorphs: source to: stream with: creationTemplate.
	stream nextPutAll: '}.
	self customCode.
	^builder build: windowSpec'