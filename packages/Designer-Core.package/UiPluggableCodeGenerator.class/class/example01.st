examples
example01
	| t1 |
	t1 := Morph new setProperty: #uiClassName toValue: #Foobar.
	UiCodeGenerator
		generateUiClassFor: (Morph new setProperty: #uiClassName toValue: #Foobar)