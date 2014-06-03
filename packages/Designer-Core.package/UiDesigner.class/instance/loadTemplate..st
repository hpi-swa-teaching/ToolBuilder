save/load
loadTemplate: t1 
	| t2 t3 |
	t3 := t1 isSymbol
				ifTrue: [Smalltalk at: t1]
				ifFalse: [t1].
	t2 := t3 new.
	t2 initializePanel.
	t2 panel removeProperty: #uiClassName;
		 removeProperty: #objectName.
	container := t2 panel.
	self initializeContainer