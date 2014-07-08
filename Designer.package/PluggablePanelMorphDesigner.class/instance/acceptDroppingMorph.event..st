dropping/grabbing
acceptDroppingMorph: aMorph event: evt

	| result |
	(aMorph isKindOf: TransferMorph)
		ifTrue: [ (aMorph passenger first at: #class ifAbsent: []) ifNotNil: [:widgetClass |
			| widget |
			widget := widgetClass pluggableDefault position: evt position.
			self addMorphBack: widget.
			self children add: widget.
			(widget isKindOf: PluggablePanelMorphDesigner)
				ifTrue: [widget editMode: self editMode].

			self
				changeFocusTo: widget bounds;
				changeSelectionTo: widget.
				
			^ self]].
	(self children includes: aMorph) ifFalse: [self children add: aMorph].
	
	result := super acceptDroppingMorph: aMorph event: evt.
	
	self
		changeFocusTo: aMorph bounds;
		changeSelectionTo: aMorph.
	
	^ result