toolbuilder
buildButtonMorphWith: builder
	| buttonMorph |
	buttonMorph := PluggableButtonSpec new.
	buttonMorph model: self.
	buttonMorph action: #actionButtonMorph.
	buttonMorph label: #labelButtonMorph.
	^buttonMorph