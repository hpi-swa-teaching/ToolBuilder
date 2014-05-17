event handling
mouseEnter: event
	super mouseEnter: event.
	self flag: #arNote. "remove this - keyboard input automatically goes right"
	event hand newKeyboardFocus: self. 