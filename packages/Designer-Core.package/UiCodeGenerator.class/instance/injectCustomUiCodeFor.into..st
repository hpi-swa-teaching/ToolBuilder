private - reading
injectCustomUiCodeFor: t1 into: t2 
	| t3 t4 t5 t7 |
	t3 := '{1} {2}: ({5}{3}{4}{6}).'.
	t4 := '{1} setProperty: #{2} toValue: ''{3}''.'.
	t1 class widgetProperties
		do: [:t8 | t8 value
				do: [:t9 | 
					t7 := false.
					t9 value == Form
						ifTrue: [t5 := t1
										valueOfProperty: (t9 key , #ByDesigner) asSymbol
										ifAbsent: [].
							t7 := true.
							t2 crtab;
								nextPutAll: (t4 format: {t1 valueOfProperty: #objectNameTemp. t9 key , #ByDesigner. t5})]
						ifFalse: [t5 := t1 perform: t9 key].
					t2 crtab;
						nextPutAll: (t3 format: {t1 valueOfProperty: #objectNameTemp. t9 key. t5 isSymbol
									ifTrue: ['#']
									ifFalse: ['']. t5 isText
									ifTrue: [t5 asString]
									ifFalse: [t5]. t5 isSymbol not & t7 not & (t5 isString | t5 isText)
									ifTrue: ['''']
									ifFalse: ['']. t5 isSymbol not & t7 not & (t5 isString | t5 isText)
									ifTrue: ['''']
									ifFalse: ['']})]]