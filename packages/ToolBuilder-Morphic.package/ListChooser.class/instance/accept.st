event handling
accept
	"if the user submits with no valid entry, make them start over"
	self canAccept ifFalse: [ 	
		searchMorph selectAll.
		^ self ].
	
	"find the selected item in the original list, and return it"
	result := selectedItems at: index.

	builder ifNotNil: [ :bldr |
		builder := nil.
		bldr close: window ]