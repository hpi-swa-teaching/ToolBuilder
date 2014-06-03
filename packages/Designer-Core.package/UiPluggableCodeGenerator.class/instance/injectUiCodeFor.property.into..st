private - reading
injectUiCodeFor: t1 property: t2 into: t3 
	| t4 t5 |
	t4 := '{1} {2}: ({3}{4}).'.
	t5 := t1 perform: t2.
	t3 crtab;
		nextPutAll: (t4 format: {t1 valueOfProperty: #objectNameTemp. t2. t5 isSymbol
					ifTrue: ['#']
					ifFalse: ['']. t5})