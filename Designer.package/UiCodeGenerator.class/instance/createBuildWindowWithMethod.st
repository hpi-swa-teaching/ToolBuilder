code - pluggable
createBuildWindowWithMethod
	| windowTitleHeight |
	windowTitleHeight := 22.
	
	self uiClass
		compile: ('buildWindowWith: builder
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec model: self.
	windowSpec label: ''{1}''.
	windowSpec extent: {2}.
	windowSpec children: OrderedCollection new.
	^windowSpec' format: {self uiClass. source extent + (0@windowTitleHeight)})
		classified: 'toolbuilder'