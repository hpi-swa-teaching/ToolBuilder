filter
nameFilter: t1 
	t1
		ifEmpty: [self ui widgetList model isFilteredModel
				ifTrue: [self selectDefaultModel]]
		ifNotEmpty: [self ui widgetList model isFilteredModel
				ifFalse: [self selectFilterModel].
			self ui widgetList model nameFilter: t1]