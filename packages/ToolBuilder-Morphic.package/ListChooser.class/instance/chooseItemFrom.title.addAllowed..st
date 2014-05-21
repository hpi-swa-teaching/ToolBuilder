initialize-release
chooseItemFrom: labelList title: aString addAllowed: aBoolean
	fullList := labelList asOrderedCollection. "coerce everything into an OC"
	builder := ToolBuilder default.
	self list: fullList.
	self title: aString.
	addAllowed := aBoolean.
	window := ToolBuilder default open: self.
	window center: Sensor cursorPoint.
	window setConstrainedPosition: (Sensor cursorPoint - (window fullBounds extent // 2)) hangOut: false.
	builder runModal: window.
	^ result