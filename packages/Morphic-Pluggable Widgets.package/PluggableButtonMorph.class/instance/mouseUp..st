event handling
mouseUp: evt

	showSelectionFeedback := false.
	borderColor isColor ifFalse:[borderColor := #raised].
	allButtons ifNil: [^ self].
	allButtons do: [:m |
		(m containsPoint: evt cursorPoint) ifTrue: [m performAction]].
	allButtons := nil.
	self changed.
