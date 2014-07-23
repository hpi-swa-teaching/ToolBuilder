toolbuilder
buildTextMorphWith: builder
	| textMorph |
	textMorph := PluggableTextSpec new.
	textMorph model: self.
	^textMorph