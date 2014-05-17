event handling
keyboardFocusChange: aBoolean 
	"The message is sent to a morph when its keyboard focus changes.
	The given argument indicates that the receiver is gaining (versus losing) the keyboard focus.
	In this case, all we need to do is to redraw border feedback"
	aBoolean ifFalse:
		[ self class clearFilterAutomatically ifTrue:
			[ self hasFilter ifTrue:
				[ self
					 removeFilter ;
					 updateList ] ] ].
	(self innerBounds areasOutside: (self innerBounds insetBy: 1)) do:
		[ : rect | self invalidRect: rect ]