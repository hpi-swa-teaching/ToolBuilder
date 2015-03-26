tests
test06PluggableNew
	
	| designer |
	designer := UiDesigner new.
	designer pluggableNew.
	
	self assert: (designer container isKindOf: UiPluggablePanelMorphDesigner).

	designer delete.