geometry
resizeScroller
	"Also needs to resize the text morph"

	super resizeScroller.
	textMorph ifNotNil:
		[textMorph extent: (self innerBounds width-6)@self height].
