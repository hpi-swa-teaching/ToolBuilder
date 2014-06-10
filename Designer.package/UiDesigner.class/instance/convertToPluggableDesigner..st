save/load - pluggable
convertToPluggableDesigner: aMorph

	container := PluggablePanelMorphDesigner new
		extent: aMorph extent.

	container
		color: (Color lightGray);
		editMode: true;
		layoutPolicy: nil;
		dragEnabled: false.
	aMorph submorphs do: [:submorph | 
		((submorph class asString findString: 'Pluggable') > 0) 
			ifTrue: [ container addMorph: submorph]].

	
	container connectSignal: #selectionChanged: to: propertyTable selector: #updateProperties: pattern: nil queue: nil blocking: false.