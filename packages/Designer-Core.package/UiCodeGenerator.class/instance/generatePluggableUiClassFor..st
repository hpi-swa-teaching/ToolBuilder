code - pluggable
generatePluggableUiClassFor: t1 
	source := t1.
	source objectName: #source.
	#(#class #accessors #methods )
		do: [:t2 | 
			t2 == #class
				ifTrue: [self createPluggableUiClass].
			t2 == #methods
				ifTrue: [self createBuildWithMethods]]
		displayingProgress: [:t2 | (Dictionary newFrom: {#class -> 'Preparing class container...'. #accessors -> 'Creating accessors for named ui objects...'. #methods -> 'Generate buildWith-method code...'})
				at: t2]