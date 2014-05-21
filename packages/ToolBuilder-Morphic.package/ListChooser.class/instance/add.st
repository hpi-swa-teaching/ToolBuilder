event handling
add
	"if the user submits with no valid entry, make them start over"
	self canAdd ifFalse: [ 	
		searchMorph selectAll.
		^ self ].
	
	"find the string to return"
	result := searchMorph getText.

	builder ifNotNil: [ :bldr |
		builder := nil.
		bldr close: window ]