event handling
mouseLeave: event
	"The mouse has left the area of the receiver"

	textMorph ifNotNil: [selectionInterval := textMorph editor selectionInterval].
	super mouseLeave: event.
	Preferences mouseOverForKeyboardFocus ifTrue:
		[event hand releaseKeyboardFocus: textMorph]