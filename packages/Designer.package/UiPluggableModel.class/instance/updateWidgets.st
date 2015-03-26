updating
updateWidgets

	widgets := OrderedCollection new.
	Morph allSubclassesDo: [:c | | node |
		node := widgets
			detect: [:n | (n at: #category) = c pluggableCategory]
			ifNone: [widgets add: (UiPropertyItemNode new
				addDefaultGroup;
				at: #category put: c pluggableCategory;
				yourself)].
		
		(c isPluggableClass)
			ifTrue: [node addChild: (
				UiPropertyItemNode new
					at: #class put: c;
					yourself)]].
	
	self modelReset.