save/load - pluggable
convertToPluggableDesigner: aMorph
	| windowTitleHeight isWindow panel |
	windowTitleHeight := 22.
	(isWindow := (aMorph owner isKindOf: PluggablePanelMorph orOf: PluggableSystemWindow) not)
		ifTrue: [aMorph openInHand].
	
	panel := PluggablePanelMorphDesigner pluggableDefault.
	isWindow ifTrue: [ (container := panel)
			extent: aMorph extent - (0@windowTitleHeight);
			color: (Color r: 0.838 g: 0.804 b: 0.804)]
		ifFalse: [panel
			extent: aMorph extent;
			color: Color transparent].
	
	panel
		editMode: true;
		layoutPolicy: nil;
		dragEnabled: false.
	
	self addSubmorphsOf: aMorph to: panel. 
	
	aMorph delete.
	
	^panel