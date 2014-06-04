initialization
initialize 
	super initialize.
	
	self hResizing: #spaceFill.
	self vResizing: #spaceFill.
	self model: self.
	self label: 'Checkbox'.
	self value: false.
	self color: Color white.
	self extent: 72@16.
	self actionSelector: #toggleValue.
	self valueSelector: #value.
	self installButton.