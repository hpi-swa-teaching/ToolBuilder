accessing
unnamedInstVars
	instVars
		ifNil: [self collectInstVars].
	^ instVars
		reject: [:t1 | t1 at: #hasName]