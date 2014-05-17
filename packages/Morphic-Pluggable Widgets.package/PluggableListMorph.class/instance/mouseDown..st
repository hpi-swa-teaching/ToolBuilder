events
mouseDown: evt
	| selectors row |
	evt yellowButtonPressed  "First check for option (menu) click"
		ifTrue: [^ self yellowButtonActivity: evt shiftPressed].
	row := self rowAtLocation: evt position.
	row = 0  ifTrue: [^super mouseDown: evt].
	"self dragEnabled ifTrue: [aMorph highlightForMouseDown]."
	selectors := Array 
		with: #click:
		with: (doubleClickSelector ifNotNil:[#doubleClick:])
		with: nil
		with: (self dragEnabled ifTrue:[#startDrag:] ifFalse:[nil]).
	evt hand waitForClicksOrDrag: self event: evt selectors: selectors threshold: HandMorph dragThreshold "pixels".