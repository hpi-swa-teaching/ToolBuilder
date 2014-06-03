save/load
load: t1 
	| t2 t3 |
	t3 := t1 isSymbol
				ifTrue: [Smalltalk at: t1]
				ifFalse: [t1].
	self addRecentDesign: t3 name asSymbol.
	t2 := t3 new.
	t2 initializePanel.
	container := t2 panel.
	self initializeContainer.
	self ui packageNameEdit theText: t3 category