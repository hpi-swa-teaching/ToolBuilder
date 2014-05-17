event handling
mouseEnter: event
	super mouseEnter: event.
	selectionInterval ifNotNil:
		[textMorph editor selectInterval: selectionInterval; setEmphasisHere].
	textMorph selectionChanged.
	event hand newKeyboardFocus: textMorph