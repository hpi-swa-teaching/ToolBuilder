accessing
namedInstVars
	instVars
		ifNil: [self collectInstVars].
	^ instVars
		select: [:t1 | t1 at: #hasName]