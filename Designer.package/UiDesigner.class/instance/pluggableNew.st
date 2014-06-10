save/load - pluggable
pluggableNew
	container := PluggablePanelMorphDesigner new
		extent: 500@300.

	container
		color: (Color lightGray);
		editMode: true;
		layoutPolicy: nil;
		dragEnabled: false.
		
	self ui centralScroller widget: container.
	
	propertyTable updateProperties: container.