drawing
fullDrawOn: aCanvas 
	"Draw frame adornments on top of everything otherwise they will partially overlap with text selection which looks ugly."
	super fullDrawOn: aCanvas. 
	self drawFrameAdornmentsOn: aCanvas.
