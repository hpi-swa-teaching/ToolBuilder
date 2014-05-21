action
mouseDown: evt
	enabled ifFalse:[^self].
	^super mouseDown: evt