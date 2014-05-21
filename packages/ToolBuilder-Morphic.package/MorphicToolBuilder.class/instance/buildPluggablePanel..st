pluggable widgets
buildPluggablePanel: aSpec
	| widget children frame |
	widget := self panelClass new.
	self register: widget id: aSpec name.
	widget model: aSpec model.
	widget color: Color transparent.
	widget clipSubmorphs: true.
	children := aSpec children.
	children isSymbol ifTrue:[
		widget getChildrenSelector: children.
		widget update: children.
		children := #().
	].
	self buildAll: children in: widget.
	self buildHelpFor: widget spec: aSpec. 
	self setFrame: aSpec frame in: widget.
	parent ifNotNil:[self add: widget to: parent].
	self setLayout: aSpec layout in: widget.
	widget layoutInset: 0.
	widget borderWidth: 0.
	widget submorphsDo:[:sm|
		(frame := sm layoutFrame) ifNotNil:[
			(frame rightFraction = 0 or:[frame rightFraction = 1]) 
				ifFalse:[frame rightOffset:1].
			(frame bottomFraction = 0 or:[frame bottomFraction = 1]) 
				ifFalse:[frame bottomOffset: 1]]].
	widget color: Color transparent.
	^widget