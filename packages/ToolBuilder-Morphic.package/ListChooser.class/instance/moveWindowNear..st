drawing
moveWindowNear: aPoint
	| trialRect delta |
	trialRect := Rectangle center: aPoint extent: window fullBounds extent.
	delta := trialRect amountToTranslateWithin: World bounds.
	window position: trialRect origin + delta.