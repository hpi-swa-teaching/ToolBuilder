toolbuilder
buildWith: builder
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| windowSpec |
	
	windowSpec := self buildWindowWith: builder specs: {
		((4/125)@(29/300) corner: (83/250)@(149/300)) -> [self buildTextMorphWith: builder].
	((207/500)@(13/150) corner: (357/500)@(73/150)) -> [self buildTreeMorphWith: builder].
	((1/50)@(53/100) corner: (8/25)@(93/100)) -> [self buildListMorphWith: builder].
	((114/125)@(187/150) corner: (263/250)@(41/30)) -> [self buildCheckBoxMorphWith: builder].
	((227/500)@(31/50) corner: (277/500)@(113/150)) -> [self buildPanelMorphWith: builder].
	((289/500)@(167/300) corner: (331/500)@(61/100)) -> [self buildButtonMorphWith: builder].
	}.
	self customCode.
	^builder build: windowSpec