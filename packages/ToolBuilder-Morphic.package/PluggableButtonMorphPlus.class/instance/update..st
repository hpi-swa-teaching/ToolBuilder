updating
update: what
	what ifNil:[^self].
	what == getLabelSelector ifTrue: [
		self label: (model perform: getLabelSelector)].
	what == getEnabledSelector ifTrue:[^self enabled: (model perform: getEnabledSelector)].

	getColorSelector ifNotNil: [ | cc |
		color = (cc := model perform: getColorSelector) ifFalse:[
			color := cc.
			self onColor: color offColor: color.
			self changed.
		].
	].
	self getModelState
			ifTrue: [self color: onColor]
			ifFalse: [self color: offColor].
	getEnabledSelector ifNotNil:[
		self enabled: (model perform: getEnabledSelector).
	].
	updateMap ifNotNil:
		[(updateMap at: what ifAbsent: [])
			ifNotNilDo: [ :newTarget | ^self update: newTarget]].
