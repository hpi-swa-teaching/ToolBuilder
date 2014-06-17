save/load - pluggable
convertToPluggableDesigner: aMorph
	
	| windowTitleHeight |
	windowTitleHeight := 22.
	container := PluggablePanelMorphDesigner new
		extent: aMorph extent - (0@windowTitleHeight).

	container
		color: (Color lightGray);
		editMode: true;
		layoutPolicy: nil;
		dragEnabled: false.
		
	aMorph openInWorld.
	
	aMorph submorphs do: [:submorph | 
		((submorph class asString findString: 'Pluggable') > 0) 
			ifTrue: [ submorph position: submorph position - aMorph position.
				submorph position: submorph position - (0@windowTitleHeight).
				container addMorph: submorph]].
	
	aMorph delete.
	
	container connectSignal: #selectionChanged: to: propertyTable selector: #updateProperties: pattern: nil queue: nil blocking: false.