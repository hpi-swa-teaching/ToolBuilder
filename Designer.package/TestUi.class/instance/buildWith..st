toolbuilder
buildWith: builder
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| windowSpec |
	
	windowSpec := self buildWindowWith: builder specs: {
		((1/20)@(29/300) corner: (7/20)@(149/300)) -> [self buildListMorphWith: builder].
	((41/100)@(31/300) corner: (71/100)@(151/300)) -> [self buildTextMorphWith: builder].
	((13/250)@(16/25) corner: (19/125)@(58/75)) -> [self buildPanelMorphWith: builder].
	((279/500)@(109/150) corner: (351/500)@(39/50)) -> [self buildCheckboxMorphWith: builder].
	((341/500)@(169/300) corner: (383/500)@(37/60)) -> [self buildButtonMorphWith: builder].
	}.
	self customCode.
	^builder build: windowSpec