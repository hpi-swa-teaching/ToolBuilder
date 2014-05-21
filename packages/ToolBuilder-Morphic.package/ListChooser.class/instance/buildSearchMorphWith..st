building
buildSearchMorphWith: builder
	| fieldSpec |
	fieldSpec := builder pluggableInputFieldSpec new.
	fieldSpec 
		model: self;
		getText: #searchText;
		setText: #acceptText:;
		menu: nil.
		"hideScrollBarsIndefinitely;"
		"acceptOnCR: true;"
		"setBalloonText: 'Type a string to filter down the listed items'."
		"onKeyStrokeSend: #keyStroke: to: self."
	^ fieldSpec