save/load - pluggable
pluggableSave

	| generator |
	
	generator := UiCodeGenerator new category: self ui packageNameEdit theText;
				 source: container.
	generator generatePluggableUiClassFor: container.