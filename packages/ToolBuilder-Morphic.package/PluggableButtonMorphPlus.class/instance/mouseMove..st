action
mouseMove: evt
	enabled ifFalse:[^self].
	^super mouseMove: evt