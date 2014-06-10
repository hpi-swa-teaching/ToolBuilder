code generation - pluggable
generatePluggableUiClassFor: aMorph 
	source := aMorph.
	source objectName: #source.
	#(#class #accessors #methods )
		do: [:step | 
			step == #class
				ifTrue: [self createPluggableUiClass].
			step == #methods
				ifTrue: [self createBuildWithMethods. self createOpen]]
		displayingProgress: [:step | (Dictionary newFrom: {#class -> 'Preparing class container...'. #accessors -> 'Creating accessors for named ui objects...'. #methods -> 'Generate buildWith-method code...'})
				at: step]