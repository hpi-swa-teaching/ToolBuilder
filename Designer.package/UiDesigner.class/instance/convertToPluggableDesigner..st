save/load - pluggable
convertToPluggableDesigner: aMorph
	
	| windowTitleHeight |
	windowTitleHeight := 22.
	
	aMorph openInHand.
	
	container := PluggablePanelMorphDesigner new
		extent: aMorph extent - (0@windowTitleHeight).

	container
		color: (Color lightGray);
		editMode: true;
		layoutPolicy: nil;
		dragEnabled: false.
	
	aMorph submorphs do: [:submorph | 
		((submorph class asString findString: 'Pluggable') > 0) 
			ifTrue: [ submorph position: submorph position - aMorph position.
				submorph position: submorph position - (0@windowTitleHeight).
				(self valueOfProperty: #objectName) ifNil: 
					[self setProperty: #objectName toValue: (submorph name splitBy: ' ') first].
				container addMorph: submorph]].
	
	aMorph delete.
	
	container connectSignal: #selectionChanged: to: propertyTable selector: #updateProperties: pattern: nil queue: nil blocking: false.