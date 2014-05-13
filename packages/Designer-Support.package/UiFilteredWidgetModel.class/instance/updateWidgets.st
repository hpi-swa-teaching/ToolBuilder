updating
updateWidgets

	widgets := OrderedCollection new.
	
	Morph allSubclassesDo: [:c |
		(c widgetClassName asLowercase includesSubString: self nameFilter asString asLowercase)
			ifTrue: [widgets add: (UiPropertyItemNode new
				at: #class put: c;
				yourself)]].

	self modelReset.