filter
selectDefaultModel
	self ui widgetList removeAllColumns; model: nil; addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself. #balloonText -> #yourself})
			textConverter: [:t1 | (t1 includesKey: #category)
					ifTrue: [('<b>'
							, (t1 at: #category) , '</b>') asHtmlText]
					ifFalse: [(t1 at: #class) widgetClassName]];
			
			iconConverter: [:t1 | (t1 includesKey: #class)
					ifTrue: [(t1 at: #class) widgetClassIcon]];
			
			balloonTextConverter: [:t1 | (t1 includesKey: #class)
					ifTrue: [(t1 at: #class) name]]); addColumn: ((UiItemViewColumnSpec newFrom: {#icon -> #yourself. #balloonText -> #yourself})
			iconConverter: [:t1 | ((t1 includesKey: #class)
						and: [(t1 at: #class) isExperimentalWidgetClass])
					ifTrue: [UiFugueIcons exclamationFrameIcon]];
			
			balloonTextConverter: [:t1 | ((t1 includesKey: #class)
						and: [(t1 at: #class) isExperimentalWidgetClass])
					ifTrue: ['For experimental use only.']]); model: UiWidgetModel new.
	self expandWidgetCategories