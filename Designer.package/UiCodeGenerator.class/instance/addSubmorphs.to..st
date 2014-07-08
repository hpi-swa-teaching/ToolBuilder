code generation - pluggable
addSubmorphs: aComposite to: stream
	| creationTemplate |
	creationTemplate := '({1}) -> [self build{2}With: builder].'.
	aComposite children
		do: [ :child | 
			child class = PluggablePanelMorphDesigner 
				ifTrue: [	self createBuildWithMethodsFor: child]
				ifFalse: [ self createBuildWithFor: child].
			stream
				nextPutAll: (creationTemplate format: 
					{self rectFor: child in: aComposite. 
					child objectName asString capitalized});
				 crtab].