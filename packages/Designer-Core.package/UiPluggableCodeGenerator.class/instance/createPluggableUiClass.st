code generation
createPluggableUiClass
	(Smalltalk
		at: self uiClassName asSymbol
		ifAbsent: [])
		ifNotNil: [:t1 | 
			t1 selectors copy
				do: [:t2 | t1 removeSelector: t2].
			t1 instVarNames copy
				do: [:t2 | t1 removeInstVarName: t2]].
	Object
		subclass: self uiClassName
		instanceVariableNames: self instVarsString
		classVariableNames: ''
		poolDictionaries: ''
		category: self category asString