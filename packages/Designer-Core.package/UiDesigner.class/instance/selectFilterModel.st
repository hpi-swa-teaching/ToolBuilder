filter
selectFilterModel
	self ui widgetList removeAllColumns; model: nil; addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself. #balloonText -> #yourself})
			textConverter: [:t1 | (t1 at: #class) widgetClassName];
			
			iconConverter: [:t1 | (t1 at: #class) widgetClassIcon];
			
			balloonTextConverter: [:t1 | (t1 at: #class) name]); addColumn: ((UiItemViewColumnSpec newFrom: {#icon -> #yourself. #balloonText -> #yourself})
			iconConverter: [:t1 | (t1 at: #class) isExperimentalWidgetClass
					ifTrue: [UiFugueIcons exclamationFrameIcon]];
			
			balloonTextConverter: [:t1 | (t1 at: #class) isExperimentalWidgetClass
					ifTrue: ['For experimental use only.']]); model: UiFilteredWidgetModel new