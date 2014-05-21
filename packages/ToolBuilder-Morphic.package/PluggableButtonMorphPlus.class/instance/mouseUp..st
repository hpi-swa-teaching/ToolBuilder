action
mouseUp: evt
	enabled ifFalse:[^self].
	^super mouseUp: evt