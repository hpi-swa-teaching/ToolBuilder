model access
iconAt: anInteger
	^ getIconSelector ifNotNil: [model perform: getIconSelector with: anInteger]