building
buildListMorphWith: builder
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		list: #list; 
		getIndex: #selectedIndex; 
		setIndex: #selectedIndex:; 
		doubleClick: #accept;
		"handleBasicKeys: false;"
		keystrokePreview: #keyStrokeFromList:;
		"doubleClickSelector: #accept;"
		autoDeselect: false.
	^ listSpec