event handling
cancel
	"Cancel the dialog and move on"
	index := 0.
	builder ifNotNil: [ builder close: window ]