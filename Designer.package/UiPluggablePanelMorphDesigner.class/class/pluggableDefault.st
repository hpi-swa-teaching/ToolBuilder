properties
pluggableDefault

	| pluggablePanelMorph |
	
	pluggablePanelMorph := UiPluggablePanelMorphDesigner new.
	pluggablePanelMorph color: (Color transparent).
	pluggablePanelMorph model: (UiPluggablePanelModel new).
	pluggablePanelMorph getChildrenSelector: #children.
	^ pluggablePanelMorph