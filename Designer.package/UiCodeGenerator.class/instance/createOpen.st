code generation - pluggable
createOpen

	self uiClass class compile: 'open
	| window |
	
	window := (ToolBuilder default) build: self new.
	window openInHand' classified: 'toolbuilder'.