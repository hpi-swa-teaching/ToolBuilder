pluggable widgets
buildPluggableList: aSpec
	| widget listClass getIndex setIndex |
	aSpec getSelected ifNil:[
		listClass := self listClass.
		getIndex := aSpec getIndex.
		setIndex := aSpec setIndex.
	] ifNotNil:[
		listClass := self listByItemClass.
		getIndex := aSpec getSelected.
		setIndex := aSpec setSelected.
	].
	widget := listClass on: aSpec model
				list: aSpec list
				selected: getIndex
				changeSelected: setIndex
				menu: aSpec menu
				keystroke: aSpec keyPress.
	self register: widget id: aSpec name.
	widget getListElementSelector: aSpec listItem.
	widget getListSizeSelector: aSpec listSize.
	widget getIconSelector: aSpec icon.
	widget doubleClickSelector: aSpec doubleClick.
	widget dragItemSelector: aSpec dragItem.
	widget dropItemSelector: aSpec dropItem.
	widget wantsDropSelector: aSpec dropAccept.
	widget autoDeselect: aSpec autoDeselect.
	widget keystrokePreviewSelector: aSpec keystrokePreview.
	aSpec color isNil 
		ifTrue: [widget 
					borderWidth: 1; 
					borderColor: Color lightGray; 
					color: Color white]
		ifFalse: [widget color: aSpec color].
	self buildHelpFor: widget spec: aSpec. 
	self setFrame: aSpec frame in: widget.
	parent ifNotNil:[self add: widget to: parent].
	panes ifNotNil:[
		aSpec list ifNotNil:[panes add: aSpec list].
	].
	^widget