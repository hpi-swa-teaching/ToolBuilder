save/load - pluggable
pluggableNew

	self selectPluggableModel.

	container := (PluggablePanelMorphDesigner pluggableDefault)
		extent: 500@300.

	container
		color: (Color r: 0.838 g: 0.804 b: 0.804);
		editMode: true;
		layoutPolicy: nil;
		dragEnabled: false.
	
	container connectSignal: #selectionChanged: to: propertyTable selector: #updateProperties: pattern: nil queue: nil blocking: false.
	
	self ui centralScroller widget: container.
	
	propertyTable updateProperties: container.