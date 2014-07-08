toolbuilder
buildCheckBoxMorphWith: builder
	| checkBoxMorph |
	checkBoxMorph := PluggableCheckBoxSpec new.
	checkBoxMorph model: self.
	checkBoxMorph action: #checkBoxMorphAction.
	checkBoxMorph label: #checkBoxMorphLabel.
	checkBoxMorph state: #checkBoxMorphState.
	checkBoxMorphState := false.
	^checkBoxMorph