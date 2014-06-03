private - inst vars
injectInstVarsForMorph: t1 into: t2 
	t1 ~~ source
		ifTrue: [t1
				setProperty: #objectNameTemp
				toValue: (t1 objectName
						ifEmpty: [self nextDefaultName]).
			t1
				setProperty: #objectDescriptionTemp
				toValue: (t1 objectDescription
						ifEmpty: ['No description given.']).
			t2
				add: (Dictionary newFrom: {#name
							-> (t1 valueOfProperty: #objectNameTemp). #description
							-> (t1 valueOfProperty: #objectDescriptionTemp). #hasName -> t1 objectName notEmpty})].
	(t1 isKindOf: UiContainer)
		ifTrue: [t1 children
				do: [:t3 | self injectInstVarsForMorph: t3 into: t2]]