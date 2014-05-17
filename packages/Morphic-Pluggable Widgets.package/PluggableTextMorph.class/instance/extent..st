geometry
extent: newExtent

	bounds extent = newExtent ifTrue: [^ self].
	super extent: (newExtent max: 36@16).
	self setScrollDeltas
