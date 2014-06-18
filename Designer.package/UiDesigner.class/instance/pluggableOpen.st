save/load - pluggable
pluggableOpen
	| result pluggableDesignes |
	
	pluggableDesignes := OrderedCollection new.
	Object allSubclasses 
		do: [:subclass| 
			(subclass respondsTo: #isPluggableUi) 
				ifTrue: [pluggableDesignes add: subclass].].
	
	result := ListChooser
		chooseItemFrom: pluggableDesignes
		title: 'Select UI class'.
	
	result ifNotNil: [:designClass |
		self convertToPluggableDesigner: ((ToolBuilder default) build: designClass new).
		container topLeft: 0@0.
		self ui centralScroller widget: container.
		propertyTable updateProperties: container.].