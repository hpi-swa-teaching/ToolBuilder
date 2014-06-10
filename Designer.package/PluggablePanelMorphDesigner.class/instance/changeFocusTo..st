focus
changeFocusTo: aRectangle

	(self owner isKindOf: PluggablePanelMorphDesigner)
		ifTrue: [^ self owner changeFocusTo: aRectangle].
	
	aRectangle = self bounds
		ifTrue: [focusRectangle := nil].
	
	focusRectangle := aRectangle ifNotNil: [:r | r outsetBy: (2@2)].
	self redrawLater.