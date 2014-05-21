ui requests
chooseFrom: labelList values: valueList lines: linesArray title: aString 
	"Choose an item from the given list. Answer the selected item."
	| index |
	^ labelList size > 30
		ifTrue:
			[ "No point in displaying more than 30 items in a menu.  Use ListChooser insted"
			index := ListChooser
				chooseFrom: labelList
				title: aString.
			index = 0 ifFalse: [ valueList at: index ] ]
		ifFalse:
			[ MenuMorph
				chooseFrom: labelList
				values: valueList
				lines: linesArray
				title: aString ]