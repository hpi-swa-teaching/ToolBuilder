save/load
load

	| result |
	
	self selectDefaultModel.
	
	result := ListChooser
		chooseItemFrom: UserInterface subclasses
		title: 'Select UI class'.
	
	result ifNotNil: [:designClass |
		self load: designClass].