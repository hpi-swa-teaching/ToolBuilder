private - reading
injectUiCodeFor: t1 into: t2 
	| t3 t4 t5 t6 |
	t3 := '{1} := {2} new.'.
	t4 := '{1} addChild: {2}.'.
	t5 := '{1} setProperty: #objectName toValue: ''{1}''.'.
	t6 := '{1} setProperty: #objectDescription toValue: ''{2}''.'.
	t2 crtab;
		nextPutAll: (t3 format: {t1 valueOfProperty: #objectNameTemp. t1 class name}).
	t1 hasTableLayout
		ifTrue: [t2 crtab;
				nextPutAll: ('{1} changeTableLayout.' format: {t1 valueOfProperty: #objectNameTemp})].
	t1 hasProportionalLayout
		ifTrue: [t2 crtab;
				nextPutAll: ('{1} changeProportionalLayout.' format: {t1 valueOfProperty: #objectNameTemp})].
	#(#extent #position #hResizing #vResizing #minWidth #minHeight #cellInset #cellPositioning #cellSpacing #layoutInset #listCentering #listDirection #listSpacing #maxCellSize #minCellSize #wrapCentering #wrapDirection #frameFractions #frameOffsets )
		do: [:t7 | self
				injectUiCodeFor: t1
				property: t7
				into: t2].
	self injectCustomUiCodeFor: t1 into: t2.
	t1 objectName
		ifNotEmpty: [t2 crtab;
				nextPutAll: (t5 format: {t1 objectName. t1 objectName})].
	t1 objectDescription
		ifNotEmpty: [t2 crtab;
				nextPutAll: (t6 format: {t1 valueOfProperty: #objectNameTemp. t1 objectDescription})].
	(t1 isKindOf: UiContainer)
		ifTrue: [t1 children
				do: [:t7 | 
					self injectUiCodeFor: t7 into: t2.
					t2 crtab;
						nextPutAll: (t4 format: {t1 valueOfProperty: #objectNameTemp. t7 valueOfProperty: #objectNameTemp})]]