accessing
enabled: aBool
	enabled := aBool.
	enabled 
		ifFalse:[self color: Color gray]
		ifTrue:[self getModelState
			ifTrue: [self color: onColor]
			ifFalse: [self color: offColor]]