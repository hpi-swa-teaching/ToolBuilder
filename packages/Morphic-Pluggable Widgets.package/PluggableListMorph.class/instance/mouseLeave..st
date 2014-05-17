events
mouseLeave: event
	"The mouse has left the area of the receiver"

	super mouseLeave: event.
	event hand releaseKeyboardFocus: self