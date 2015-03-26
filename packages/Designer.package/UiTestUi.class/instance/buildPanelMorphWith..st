toolbuilder
buildPanelMorphWith: builder
	| panelMorph |
	panelMorph := PluggablePanelSpec new.
	panelMorph model: self.
	^panelMorph