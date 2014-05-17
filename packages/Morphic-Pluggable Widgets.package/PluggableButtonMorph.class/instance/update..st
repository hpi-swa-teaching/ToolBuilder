updating
update: aParameter 

	getLabelSelector ifNotNil: [
		aParameter == getLabelSelector ifTrue: [
			self label: (model perform: getLabelSelector)]].
	self getModelState
		ifTrue: [self color: onColor]
		ifFalse: [self color: offColor].
