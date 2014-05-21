drawing
acceptColor
	^ self canAccept 
		ifTrue: [ ColorTheme current okColor ]
		ifFalse: [ Color lightGray "ColorTheme current disabledColor <- you don't have this!" ]