save/load
pluggableSave
	| t1 |
	t1 := UiCodeGenerator new category: self ui packageNameEdit theText;
				 source: container.
	t1 generatePluggableUiClassFor: container