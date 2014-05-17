events
updateFeedbackForEvt: evt

	| newState |
	newState := self containsPoint: evt cursorPoint.
	newState = showSelectionFeedback ifFalse: [
		borderColor isColor
			ifTrue:[showSelectionFeedback := newState]
			ifFalse:[borderColor := newState ifTrue:[#inset] ifFalse:[#raised]].
		self changed].
