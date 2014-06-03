save/load
pluggableLoad
	| t1 |
	t1 := ListChooser chooseItemFrom: Object subclasses title: 'Select UI class'.
	t1
		ifNotNil: [:t2 | self pluggableLoad: t2]