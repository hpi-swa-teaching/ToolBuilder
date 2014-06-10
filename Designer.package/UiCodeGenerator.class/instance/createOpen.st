code generation - pluggable
createOpen
	self uiClass compile: 'open
	| window |
	
	window := (ToolBuilder default) build: self.
	window openInWorld' classified: 'toolbuilder'.