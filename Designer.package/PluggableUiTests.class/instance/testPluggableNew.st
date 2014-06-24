tests
testPluggableNew
	
	| designer |

	designer := UiDesigner new.
	designer pluggableNew.
	
	self assert: (designer container isKindOf: PluggablePanelMorphDesigner).

	designer delete.