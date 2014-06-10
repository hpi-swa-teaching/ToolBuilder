save/load - pluggable
pluggableOpen
	| result |
	
	result := ListChooser
		chooseItemFrom: CodeHolder subclasses
		title: 'Select UI class'.
	
	result ifNotNil: [:designClass |
		self convertToPluggableDesigner: ((ToolBuilder default) build: designClass new).
		container topLeft: 0@0.
		self ui centralScroller widget: container.
		propertyTable updateProperties: container.].