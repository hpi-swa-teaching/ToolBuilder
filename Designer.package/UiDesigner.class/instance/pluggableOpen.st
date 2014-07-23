save/load - pluggable
pluggableOpen

	| result pluggableDesigns |
	
	self selectPluggableModel.
	
	pluggableDesigns := OrderedCollection new.
	Object allSubclasses 
		do: [:subclass| 
			(subclass respondsTo: #isPluggableUi) 
				ifTrue: [pluggableDesigns add: subclass]].
	
	result := ListChooser
		chooseItemFrom: pluggableDesigns
		title: 'Select UI class'.
	
	result ifNotNil: [:designClass |
		self convertToPluggableDesigner: (ToolBuilder build: designClass new).
		container topLeft: 0@0;
			connectSignal: #selectionChanged: 
			to: propertyTable 
			selector: #updateProperties: 
			pattern: nil 
			queue: nil 
			blocking: false.
		self ui centralScroller widget: container.
		propertyTable updateProperties: container].