save/load - pluggable
selectPluggableModel

	self ui widgetList
		removeAllColumns; model: nil;
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself. #balloonText -> #yourself})
			textConverter: [:node | (node includesKey: #category)
				ifTrue: [('<b>', (node at: #category), '</b>') asHtmlText]
				ifFalse: [(node at: #class) pluggableClassName]];
			iconConverter: [:node | (node includesKey: #class)
				ifTrue: [(node at: #class) widgetClassIcon]];
			balloonTextConverter: [:node | (node includesKey: #class)
				ifTrue: [(node at: #class) name]]);
		model: UiPluggableModel new.
		
	self expandWidgetCategories.