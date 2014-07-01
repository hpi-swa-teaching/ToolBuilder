save/load - pluggable
addSubmorphs: aMorph to: aPanel

	| windowTitleHeight |
	
	windowTitleHeight := 22.
	
	aMorph submorphs do: [:submorph | 
		((submorph class asString findString: 'Pluggable') > 0) 
			ifTrue: [ submorph position: submorph position - aMorph position.
				submorph position: submorph position - (0@windowTitleHeight).
				(self valueOfProperty: #objectName) ifNil: 
					[self setProperty: #objectName toValue: (submorph name splitBy: ' ') first].
				submorph class = PluggablePanelMorph 
					ifTrue: [ | tmpPanel |
						tmpPanel := PluggablePanelMorphDesigner pluggableDefault.
						tmpPanel position: submorph position.
						tmpPanel extent: submorph extent.
						tmpPanel editMode: true.
						submorph := tmpPanel].
				aPanel addMorph: submorph]].
	