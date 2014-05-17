accessing
charactersOccluded
	"Answer the number of characters occluded in my #visibleList by my right edge."
	^ self visibleList
		inject: 0
		into:
			[ : sum : each | | eachString totalWidth indexOfLastVisible |
			totalWidth := 0.
			eachString := each asString "withBlanksTrimmed".
			indexOfLastVisible := ((1 to: eachString size)
				detect:
					[ : index | (totalWidth := totalWidth + (self font widthOf: (eachString at: index))) >
						(self width -
							(scrollBar
								ifNil: [ 0 ]
								ifNotNil: [ scrollBar width ])) ]
				ifNone: [ eachString size + 1 ]) - 1.
			sum + (eachString size - indexOfLastVisible) ]