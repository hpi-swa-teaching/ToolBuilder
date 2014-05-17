drawing
drawOn: aCanvas 
	| cc gradient borderColor |
	cc := self color.
	cc isTransparent ifTrue:[cc := Color gray: 0.9].
	self enabled ifFalse:[cc := Color lightGray].
	cc brightness > 0.9 ifTrue:[cc := cc adjustBrightness: 0.9 - cc brightness].
	showSelectionFeedback ifTrue:[
		borderColor := cc muchDarker.
		gradient := GradientFillStyle ramp: {
			0.0 -> cc muchDarker.
			0.1-> (cc adjustBrightness: -0.2).
			0.5 -> cc.
			0.9-> (cc adjustBrightness: -0.1).
			1 -> cc muchDarker.
		}.
	] ifFalse:[
		borderColor := Color lightGray.
		gradient := GradientFillStyle ramp: {
			0.0 -> Color white.
			0.1-> (cc adjustBrightness: 0.05).
			0.6 -> (cc darker).
		}
	].
	gradient origin: bounds topLeft.
	gradient direction: 0@self height.
	^ self roundedButtonCorners
		ifTrue: [aCanvas 
				frameAndFillRoundRect: bounds 
				radius: 8 
				fillStyle: gradient 
				borderWidth: 1 
				borderColor: borderColor]
		ifFalse: [aCanvas 
				frameAndFillRectangle: self innerBounds 
				fillColor: gradient asColor 
				borderWidth: 1 
				borderColor: borderColor darker;
				fillRectangle: (self innerBounds insetBy: 1) 
				fillStyle: gradient]