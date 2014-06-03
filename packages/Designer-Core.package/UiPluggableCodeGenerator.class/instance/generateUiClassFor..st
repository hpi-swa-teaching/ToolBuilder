code generation
generateUiClassFor: t1 
	source := t1.
	source objectName: #panel.
	#(#class #accessors #panel )
		do: [:t2 | 
			t2 == #class
				ifTrue: [self createUiClass].
			t2 == #accessors
				ifTrue: [self createAccessors].
			t2 == #panel
				ifTrue: [self createBuildWithMethods]]
		displayingProgress: [:t2 | (Dictionary newFrom: {#class -> 'Preparing class container...'. #accessors -> 'Creating accessors for named ui objects...'. #panel -> 'Generate buildWith-method code...'})
				at: t2]