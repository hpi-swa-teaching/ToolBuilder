event handling
updateFilter

	selectedItems := 
		searchText isEmptyOrNil 
			ifTrue: [ fullList ]
			ifFalse: [ | pattern patternMatches prefixMatches |
				pattern := (searchText includes: $*)
					ifTrue: [ searchText ]
					ifFalse: [ '*', searchText, '*' ].
				patternMatches := fullList select: [:s | pattern match: s ].
				prefixMatches := OrderedCollection new: patternMatches size.
				patternMatches removeAllSuchThat: [ :each |
					(each findString: searchText startingAt: 1 caseSensitive: false) = 1
						and: [
							prefixMatches add: each.
							true ] ].
				prefixMatches addAllLast: patternMatches; yourself].
	self changed: #list.
	self selectedIndex: 1.
	self changed: #selectedIndex.