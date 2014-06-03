save/load
load
	| t1 |
	t1 := ListChooser chooseItemFrom: UserInterface subclasses title: 'Select UI class'.
	t1
		ifNotNil: [:t2 | self load: t2]