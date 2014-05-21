styling
hasUnacceptedEdits: aBoolean
	"re-implemented to re-style the text iff aBoolean is true"
	 
	super hasUnacceptedEdits: aBoolean.
	(aBoolean and: [self okToStyle])
		ifTrue: [ styler styleInBackgroundProcess: textMorph contents]