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
	
	self addSubmorphs: aMorph to: container. 
	
	aMorph delete.
	
	container connectSignal: #selectionChanged: to: propertyTable selector: #updateProperties: pattern: nil queue: nil blocking: false.