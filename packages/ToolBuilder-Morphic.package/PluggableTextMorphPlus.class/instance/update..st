updating
update: what
	what ifNil:[^self].
	what == getColorSelector ifTrue:[self color: (model perform: getColorSelector)].
	^super update: what