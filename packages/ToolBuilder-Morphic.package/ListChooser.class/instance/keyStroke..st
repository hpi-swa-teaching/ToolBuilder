event handling
keyStroke: event
	| newText key |
	"handle updates to the search box interactively"
	key := event keyString.
	(key = '<up>') ifTrue: [ 
		self move: -1. 
		^ self ].
	(key = '<down>') ifTrue: [ 
		self move: 1.
		^ self ].

	(key = '<Cmd-s>') ifTrue: [ self accept. ^ self ].
	(key = '<cr>') ifTrue: [ self accept. ^ self ].

	(key = '<escape>') ifTrue: [ self cancel. ^ self ].
	(key = '<Cmd-l>') ifTrue: [ self cancel. ^ self ].
	
	(key = '<Cmd-a>') ifTrue: [ self add. ^ self ].

	"pull out what's been typed, and update the list as required"
	newText := searchMorph textMorph asText asString.
	(newText = searchText) ifFalse: [ 
		searchText := newText.
		self updateFilter ].
