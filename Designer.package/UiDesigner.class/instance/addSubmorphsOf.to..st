save/load - pluggable
addSubmorphsOf: aMorph to: aPanel

	| windowTitleHeight isWindow |
	
	windowTitleHeight := 22.
	isWindow := (aMorph owner isKindOf: PluggablePanelMorph orOf: PluggableSystemWindow) not.
	
	aMorph submorphs do: [:submorph | 
		((submorph class asString findString: 'Pluggable') > 0) 
			ifTrue: [ submorph position: submorph position - aMorph position.
				isWindow ifTrue: [submorph position: submorph position - (0@windowTitleHeight)].
				(self valueOfProperty: #objectName) ifNil: 
					[self setProperty: #objectName toValue: (submorph name splitBy: ' ') first].
				submorph class = PluggablePanelMorph 
					ifTrue: [ submorph := self convertToPluggableDesigner: submorph].
				aPanel addMorph: submorph]].
	