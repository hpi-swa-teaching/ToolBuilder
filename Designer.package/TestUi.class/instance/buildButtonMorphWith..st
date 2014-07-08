toolbuilder
buildButtonMorphWith: builder
	| buttonMorph |
	buttonMorph := PluggableButtonSpec new.
	buttonMorph model: self.
	buttonMorph action: #buttonMorphAction.
	buttonMorph label: #buttonMorphLabel.
	^buttonMorph