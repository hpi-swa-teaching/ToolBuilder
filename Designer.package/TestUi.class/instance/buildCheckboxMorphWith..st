toolbuilder
buildCheckboxMorphWith: builder
	| checkboxMorph |
	checkboxMorph := PluggableCheckBoxSpec new.
	checkboxMorph model: self.
	checkboxMorph action: #actionCheckboxMorph.
	checkboxMorph label: #labelCheckboxMorph.
	checkboxMorph state: #stateCheckboxMorph.
	^checkboxMorph