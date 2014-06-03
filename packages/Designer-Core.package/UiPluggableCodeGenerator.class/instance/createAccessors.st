code generation
createAccessors
	| t1 |
	t1 := '{1}
	"{2}"
	
	^ {1}'.
	self namedInstVars
		do: [:t2 | self uiClass
				compile: (t1 format: {t2 at: #name. t2 at: #description})
				classified: 'accessing']