event handling
mouseDown: evt

	evt hand
		waitForClicksOrDrag: self
		event: evt
		selectors: {#click:. nil. nil. #startDrag:}
		threshold: 1. 
		