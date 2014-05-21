event handling
keyStrokeFromList: event
	"we don't want the list to be picking up events, excepting scroll events"

	"Don't sent ctrl-up/ctrl-down events to the searchMorph: they're scrolling events."
	(#(30 31) contains: [:each | each = event keyValue]) not
		ifTrue:
			["window world primaryHand keyboardFocus: searchMorph."
			searchMorph keyStroke: event.
			"let the list know we've dealt with it"
			^true].
	^false.
		