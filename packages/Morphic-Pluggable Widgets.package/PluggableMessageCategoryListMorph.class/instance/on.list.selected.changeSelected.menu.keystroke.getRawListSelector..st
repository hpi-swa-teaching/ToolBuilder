as yet unclassified
on: anObject list: getListSel selected: getSelectionSel changeSelected: setSelectionSel menu: getMenuSel keystroke: keyActionSel getRawListSelector: getRawSel
	self model: anObject.
	getListSelector := getListSel.
	getIndexSelector := getSelectionSel.
	setIndexSelector := setSelectionSel.
	getMenuSelector := getMenuSel.
	keystrokeActionSelector := keyActionSel.
	autoDeselect := true.
	self borderWidth: 1.
	getRawListSelector := getRawSel.
	self updateList.
	self selectionIndex: self getCurrentSelectionIndex.
	self initForKeystrokes