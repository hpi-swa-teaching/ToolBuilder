ui requests
chooseFrom: aList lines: linesArray title: aString 
	"Choose an item from the given list. Answer the index of the selected item."
	^ aList size > 30
		ifTrue:
			[ "Don't put more than 30 items in a menu.  Use ListChooser insted"
			ListChooser
				chooseFrom: aList
				title: aString ]
		ifFalse:
			[ MenuMorph
				chooseFrom: aList
				lines: linesArray
				title: aString ]