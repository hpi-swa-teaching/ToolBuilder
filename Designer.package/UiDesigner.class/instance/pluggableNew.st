save/load - pluggable
pluggableNew

	self selectPluggableModel.

	container := PluggablePanelMorphDesigner new
		extent: 500@300.

	container
		color: (Color lightGray);
		editMode: true;
		layoutPolicy: nil;
		dragEnabled: false.
	
	container connectSignal: #selectionChanged: to: propertyTable selector: #updateProperties: pattern: nil queue: nil blocking: false.
	
	self ui centralScroller widget: container.
	
	propertyTable updateProperties: container.