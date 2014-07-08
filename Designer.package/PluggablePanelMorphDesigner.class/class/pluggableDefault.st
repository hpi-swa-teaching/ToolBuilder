properties
pluggableDefault

	| pluggablePanelMorph |
	
	pluggablePanelMorph := PluggablePanelMorphDesigner new.
	pluggablePanelMorph color: (Color transparent).
	pluggablePanelMorph model: (PluggablePanelModel new).
	pluggablePanelMorph getChildrenSelector: #children.
	^ pluggablePanelMorph